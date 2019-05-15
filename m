Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD281F74B
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 17:18:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Dp2Hndwvq3Lk03GrQhdfmWUGodqP+y5gpahqlv8DZMo=; b=AzNhmmII2vhBvRC5c6Q32RT0i
	EKt93bj9qqHxXBGWT5sVcVZD7H+WHoHhW882uja5GY/I5+XU7USYrXxGYYEYR/9ipHJUAN7G1X4Rh
	lYtNoVSNbl/XV7bkaftTBBjy3SfghzfdO9s8y8u3on8rToJI79IR7wPJoZO1x6KRvGfbP19OxNQ3c
	jaD1ucRbevBT8K7pm+XF/qD4f7DQLWUwhuBCf2HqqaZ93UdRkL6c7kZDBxZ3ZKn/ILwfzy486/0qR
	mOX8gvGptkmEg7a8VcJgf2gfRy5A77FrhtHpw5Ig5ttRnuxCsNu2rBXz7/3a7za+OUKQEr7bqjmmH
	lhgFM228g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQvfr-0001ml-Or; Wed, 15 May 2019 15:18:31 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQvfV-0001Vt-GG
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 15:18:21 +0000
Received: by mail-wm1-x343.google.com with SMTP id i3so429560wml.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 May 2019 08:18:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=ENYeUynHKaw5K8eW/EaNJId6cpiYDN5ZLdcu96i2i0o=;
 b=gumNe0T7ZbQQX8oglJvYcSlFL6nv8y/CVoaUfX0eT+3l6suViTMOWPeKc6iHwr811w
 iXNfjnoO2LfWCiydd8BQ3pAwFJJ4ETfSTcA/M840MjV9wrk7zQ1rqcxbRZu+TS7FIVV0
 tPS3J9a6IDt0mxhhWOhoW+4I12qIvyk02vMbMdGizA+xVM2Yn/l1QX32/DgBvzYMM1I2
 aC/75DKuAPnZIen+MVDFFJMio+cPf7l3nOvybGrXGHqrG8MvmLscJ/8JbwOoViefPyI3
 tqkaL2KdtDTh7a8flAPiBIlA+qPC3gZlgF47BDPdcF1onD62G2T86hbSTkr1+Icct1pR
 gkEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=ENYeUynHKaw5K8eW/EaNJId6cpiYDN5ZLdcu96i2i0o=;
 b=aEMgH1FNI5cWy70k+XbSK0kZ1dprc5Lo5QBJjEENYR/Z4p+a7QfwPcHPA14qtL6g3j
 a/cwVGJRez4aci18Vw7xo6CPDJ5ckeI6xinB8+XslhBXxuCv6gp8Ok4dFuxCMnXQvbFb
 B4Z9twpm2zVBdOnTCc5MYo91XkW8PF9+MgQSXHpgHtbMVFlRUAlGFh00HlFnwz2AsITh
 xK5A5UVPnrouc5S2jrYr7HLunwx8GhTQ5KtKF+Y7jGUzu0Udk9xfVI3NVhjUSlAnYTR/
 58nkIFMMVC3p2tRqZY2/Td+eUmuD4IBZru3kqV5d7/ASPRfyylZg1JOn6gZq4Jr7fOZ4
 2roQ==
X-Gm-Message-State: APjAAAXHJJ9gxCqTOR1dYQezYDGEbkMWCZ/Peq611b7sTh3CoBLPFlQP
 hPD69sw+nyHIc/fHlx5cslaDoOkR
X-Google-Smtp-Source: APXvYqzTeqjqBZDsM9YEUoWxQjYRwPZVNQfDiacuuZbyb2XTbq7yqg77biZT3Klfcdjx3z2VAOnjWQ==
X-Received: by 2002:a1c:e386:: with SMTP id a128mr17273354wmh.69.1557933486683; 
 Wed, 15 May 2019 08:18:06 -0700 (PDT)
Received: from [192.168.111.139] ([151.84.207.109])
 by smtp.gmail.com with ESMTPSA id n63sm2682781wmn.38.2019.05.15.08.18.05
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 08:18:06 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <6358e0b2-f60f-a820-68e4-21513abeefa5@aparcar.org>
 <20190514144959.GC93050@meh.true.cz>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <1a79953f-d36d-9bc4-fae0-fafa4f5bae4d@gmail.com>
Date: Wed, 15 May 2019 17:18:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190514144959.GC93050@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_081810_208412_5329E6E9 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] RFC: add metadata to buildroot
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDE0LzA1LzE5IDE2OjQ5LCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+IFthZGRpbmcgVGhvbWFz
IGFuZCBBbGJlcnRvIHRvIHRoZSBDYyBsb29wXQo+Cj4gUGF1bCBTcG9vcmVuIDxtYWlsQGFwYXJj
YXIub3JnPiBbMjAxOS0wNS0wNCAxNzo0ODowM106Cj4KPiBIaSwKPgo+PiBmcm9tIG15IHBvaW50
IG9mIHZpZXcgdGhlIGN1cnJlbnQgT3BlbldydCBkZXZpY2UgZG9jdW1lbnRhdGlvbiBsYWNrcwo+
PiBzb21lIHVuaXR5LCBtZWFuaW5nIHRoZSB0YWJsZSBvZiBoYXJkd2FyZSBpcyBwYXJ0bHkgaW5j
b21wbGV0ZSBvcgo+PiBpbmNvbnNpc3RlbnQuIEFsc28gZG9jdW1lbnRhdGlvbnMgYXJlIG9mdGVu
IHJld3JpdHRlbiB3aXRoIGRpZmZlcmVudAo+PiBwcmVjaXNpb24gYW5kICJ0b25ndWUiLgo+Pgo+
PiBUbyB1bmlmeSB0aGluZ3MgSSBjcmVhdGVkIGEgKlBvQypbMF0sIG1vc3RseSBiYXNlZCBvbiB0
aGUgb2ZmaWNpYWwKPj4gTGluZWFnZU9TIFdpa2lbMV0sIGFzIHRoZXkgaGF2ZSBhIHNpbWlsYXIg
c2l0dWF0aW9uIHJlZ2FyZGluZyBkZXZpY2VzLgo+Pgo+PiBUaGUgaWRlYSBpcyB0byBkZWZpbmUg
dGVtcGxhdGVzIGRlc2NyaWJpbmcgY29tbW9uIGluZm9ybWF0aW9uIGFuZCBmaWxsCj4+IHRoZW0g
d2l0aCBkZXZpY2UgbWV0YWRhdGEuCj4+Cj4+IFRoZSAqUG9DKiBhYm92ZSBpcyBiYXNlZCBvbiB0
aGUgZm9sbG93aW5nIG1ldGFkYXRhIGhlcmVbMl0uIE1vc3QgcGFydHMKPj4gb2YgdGhlIG1ldGFk
YXRhIGFyZSBzY3JhcGVkIGZyb20gdGhlIGN1cnJlbnQgVG9IWzNdLCBob3dldmVyIHNvbWUgc21h
bGwKPj4gcGllY2VzIGFyZSBhZGRlZCBhbmQgbGF0ZXIgcmVuZGVyZWQgaW4gc29tZXRoaW5nIHVz
ZWZ1bDoKPj4KPj4gIMKgwqDCoCB0ZnRwX2ltYWdlOiBBcmNoZXJDNXYxX3RwX3JlY292ZXJ5LmJp
bgo+PiAgwqDCoMKgIHRmdHBfaXA6IDE5Mi4xNjguMC42Ngo+Pgo+PiBSZXN1bHQgaW4gYSBzbWFs
bCB0ZXh0IHRvIGV4cGxhaW4gaG93IHRvIHVzZSB0aGUgVEZUUCByZWNvdmVyeS4KPj4KPj4gIMKg
wqDCoCBzd2l0Y2hfcG9ydHM6Cj4+ICDCoCDCoMKgwqAgMDogRVRIMQo+PiAgwqAgwqDCoMKgIDE6
IFdBTgo+PiAgwqAgwqDCoMKgIDI6IExBTjEKPj4gIMKgIMKgwqDCoCAzOiBMQU4yCj4+ICDCoCDC
oMKgwqAgNDogTEFOMwo+PiAgwqAgwqDCoMKgIDU6IExBTjQKPj4gIMKgwqDCoCDCoCA2OiBFVEgw
Cj4+Cj4+IENyZWF0ZXMgYSB0YWJsZSB3aXRoIHRoZSBzd2l0Y2ggcG9ydCBtZXNzaW5nLgo+Pgo+
PiBTYW1lIGNvdWxkIGJlIGRvbmUgd2l0aCB0aGUgZmxhc2ggbGF5b3V0LCBMRURzLCBldGMuCj4+
Cj4+IEFsbCB0aGVzZSBpbmZvcm1hdGlvbiBhcmUgKGhvcGVmdWxseSkgYXZhaWxhYmxlIHRvIHRo
ZSBkZXZlbG9wZXIgYWRkaW5nCj4+IGEgbmV3IGRldmljZSwgdGhlcmVmb3JlIGVhc3kgdG8gc3Vw
cGx5IHN1Y2ggYSBgeWFtbGAgbWV0YWRhdGEgZmlsZSBhcwo+PiB3ZWxsLiBPZnRlbiB0aGVzZSBp
bmZvcm1hdGlvbiBhcmUgKHJlLWZvcm11bGF0ZWQpIGluIGNvbW1pdCBtZXNzYWdlcwo+PiBhbnl3
YXlbNF0uIE1lYW5pbmcsIHNvbWV3aGVyZSBpbiB0aGUgYnVpbGRyb290IGNvdWxkIGJlIGEgc3Rv
cmUgb2YKPj4gYHlhbWxgIGZpbGVzLCB3aGljaCBjb3VsZCBldmVuIGJlIHJldXNlZCBmb3IgYnVp
bGRpbmcgaXRzZWxmLgo+Pgo+PiBBIHNlY29uZCByZXBvc2l0b3J5IGxpa2Ugb3BlbndydC1kZXZp
Y2UuZ2l0WzVdIGNvdWxkIGJlIGFkZGVkIHRvIHJlbmRlcgo+PiB0aGUgd2lraSBwYWdlcyBhbmQg
b3JnYW5pemUgdGhlIHRlbXBsYXRlcy4KPj4KPj4gSSdkIGJlIGhhcHB5IHRvIGhlYXIgeW91ciBv
cGluaW9ucy4KPiBJIHJlYWxseSBsaWtlLCBpdCdzIG5pY2UgYW5kIEkgYXBwbGF1ZCB5b3VyIGVm
Zm9ydC4gVGhhbmtzIQo+Cj4+IEJlc3QsCj4+IFBhdWwKPj4KPj4gUFM6IEknbSBhZnJhaWQgSSBk
b24ndCBrbm93IHRoZSBtYWlsIGFkZHJlc3Mgb2YgdG1vbWFzLi4uCj4+Cj4+IFswXTogaHR0cHM6
Ly9hcGFyY2FyLmdpdGh1Yi5pby9vcGVud3J0LWRldmljZXMvZGV2aWNlcy90cC1saW5rX2FyY2hl
cl9jNV9hYzEyMDBfdjEvCj4+IFsxXTogaHR0cDovL3dpa2kubGluZWFnZW9zLm9yZy9kZXZpY2Vz
Lwo+PiBbMl06IGh0dHBzOi8vZ2l0aHViLmNvbS9hcGFyY2FyL29wZW53cnQtZGV2aWNlcy9ibG9i
L21hc3Rlci9fZGF0YS9kZXZpY2VzL3RwLWxpbmtfYXJjaGVyX2M1X2FjMTIwMF92MS55bWwKPj4g
WzNdOiBodHRwczovL29wZW53cnQub3JnL3RvaC9od2RhdGEvdHAtbGluay90cC1saW5rX2FyY2hl
cl9jNV9hYzEyMDBfdjEKPj4gWzRdOiBodHRwczovL2dpdC5vcGVud3J0Lm9yZy8/cD1vcGVud3J0
L29wZW53cnQuZ2l0O2E9Y29tbWl0O2g9NDNlOGMzN2NiNGRhNjRhMTJhM2NiODhhODRiMTlkYjdm
MmZjNjQwYwo+PiBbNV06IGh0dHBzOi8vZ2l0aHViLmNvbS9hcGFyY2FyL29wZW53cnQtZGV2aWNl
cwo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwKCgpJJ20gYWx3YXlzIGluIGZhdm9yIG9mIG1vcmUgYXV0b21hdGlvbiwgYWx0aG91Z2ggdGhl
IFRPSCBpcyBtb3N0bHkgCnRtb21hcydzIHRoaW5nLgoKVGhlIHBvaW50IGhlcmUgaXMgdGhhdCBi
ZWZvcmUgd2UgY2FuIGVuZm9yY2UgdGhpcyBvbiBjb21taXRzIHRoZXJlIG5lZWRzIAp0byBiZToK
Ci1hIGNvbnNlbnN1cyBiZXR3ZWVuIGNvcmUgZGV2cwoKLWVub3VnaCBkZXZpY2VzIHdpdGggYSBZ
QU1MIGZpbGUgZ2VuZXJhdGVkIGFuZCBhIHdvcmtpbmcgIlRPSCIgc2l0ZS4KCi1BbGJlcnRvCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
