/**
 * 회원 정보 입력 관련 처리함수
 */
var member = {
	//각 태그별 키보드 입력 값의 상태확인
	tag_status: function( tag ){
		var name = tag.attr('name');
		if( name=='pw' )			return this.pw_status( tag.val() );
		else if( name=='pw_ck' )	return this.pw_ck_status( tag.val() );
		else if( name=='id' )		return this.id_status( tag.val() );
		else if( name=='email' )	return this.email_status( tag.val() );
	},
	
	space: /\s/g,
	
	//이메일관련 상태확인
	email_status: function( email ){
		if( email=='' )					return this.common.empty;
		else if( reg.test( email ) ) 	return this.email.valid;
		else							return this.email.invalid;
	},
	
	//이메일 상태값
	email: {
		valid:   { code: 'valid',   desc: '사용가능한 이메일' },
		invalid: { code: 'invalid', desc: '사용할 수 없는 이메일' },
	},
	
	//아이디관련 상태확인
	id_status: function( id ){
		if( id=='' )						return this.common.empty;
		else if( id.match(this.space) )		return this.common.space;
		else								return this.id.valid;
	},
	
	//아이디 상태값
	id: {
		unUsable: { code: 'invalid', desc: '이미 사용중인 아이디' },
		usable: { code: 'valid', desc: '사용가능한 아이디' },
		valid: { code: 'valid', desc: '아이디 중복확인을 하세요' },
	},
	
	//비밀번호관련 상태확인
	pw_status: function( pw ){
		if( pw=='' )  					return this.common.empty;
		else if( pw.match(this.space) )	return this.common.space;
		else							return this.pw.valid;	
	},
		
	//비밀번호확인관련 상태확인
	pw_ck_status: function( pw_ck ){
		if( pw_ck=='' )								return this.common.empty;
		else if( pw_ck != $('[name=pw]').val() )	return this.pw.notEqual;	
		else 										return this.pw.equal;
	},
	
	//비밀번호 상태값
	pw: {

		valid:   { code: 'valid',   desc: '사용가능 비밀번호' },
		equal:   { code: 'valid',   desc: '비밀번호가 일치합니다' },
		notEqual:{ code: 'invalid',   desc: '비밀번호가 일치하지 않습니다' },
	},
	
	//공통사용 상태값
	common: {
		empty: { code: 'invalid', desc: '입력하세요' },
		space: { code: 'invalid', desc: '공백없이 입력하세요' },
	}
}