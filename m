Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E3722716
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 May 2019 17:12:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fSNLebqQicERlLVgRN0wR7Q7+CGir4udHsW+kEi4Imk=; b=lZKWwgCPEGy90OU76BzeBLM5h
	mQbC/1YWeBCTgg2RcNesK5g1cgBwtQmY/1Bs9w+2XGB3s77kCGrvws8hb1immBXR5++zUPsbhIsQw
	K0UyAhvwuq/0YUL+D0Q7B1MyJWV/4NPGf4hRaRcWSsvn3b+07q0qVyuuYC5zWUIMFxutxofukdpyt
	9mou67voeafthb6791PWuFMzUdUeQFiogDKEu/AbEV3bHisoVe7J541rQEKNw5Gd70pobSMlTmWFW
	V3piao+TF0rzioQoiCnN1XtWOkenOFOBVMvRwHC2GlQ0rKqbFiqGxxedlyFGo6CpcD9lhV5+na7ZJ
	HQZuMuhMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSNTe-0007VT-Mx; Sun, 19 May 2019 15:11:54 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSNTW-0007Uv-BK
 for openwrt-devel@lists.openwrt.org; Sun, 19 May 2019 15:11:48 +0000
Received: from ubuntu.pn.wagsky.com (c-69-181-42-248.hsd1.ca.comcast.net
 [69.181.42.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 9866927A2C;
 Sun, 19 May 2019 08:11:09 -0700 (PDT)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <20190514223956.19663-1-lede@allycomm.com>
 <20190514223956.19663-4-lede@allycomm.com>
 <20190515090054.GI93050@meh.true.cz>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <b6670c88-afae-22fe-6126-f4496f0b9a12@allycomm.com>
Date: Sun, 19 May 2019 08:11:09 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190515090054.GI93050@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_081146_390009_C5EBB0DA 
X-CRM114-Status: GOOD (  19.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] ath79: Extend GL.iNet AR750S
 support to NAND file system
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
Cc: openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gNS8xNS8xOSAyOjAwIEFNLCBQZXRyIMWgdGV0aWFyIHdyb3RlOgoKPiBKZWZmIEtsZXRza3kg
PGxlZGVAYWxseWNvbW0uY29tPiBbMjAxOS0wNS0xNCAxNTozOTo1Nl06CgpbLi4uXQoKQSBxdWVz
dGlvbiBhbmQgYW4gYW5zd2VyIGFzIEkgd3JhcCB1cCB0aGUgcHVuY2gtZG93biBsaXN0IG9uIHRo
aXMKCj4+ICtjb21tYV90b191bmRlcnNjb3JlKCkgewo+PiArCWVjaG8gIiR7MSUlLCp9XyR7MSMq
LH0iCj4+ICt9Cj4+ICsKPj4gWy4uLl0KPiBJIHRoaW5rLCB0aGF0IGl0IHdvdWxkIGJlIGJldHRl
ciB0byBhZGQgc3VwcG9ydCBmb3IgRFQgY29tcGF0aWJsZSBiYXNlZAo+IGJvYXJkX25hbWUgZm9y
bWF0IGRpcmVjdGx5IGludG8gbmFuZF9kb19wbGF0Zm9ybV9jaGVjaywgc28gaXQgY291bGQgYmUg
cmV1c2VkCj4gYnkgb3RoZXIgcGxhdGZvcm1zIGFzIHdlbGwuCgpJIG9yaWdpbmFsbHkgaGFkIGFw
cGxpZWQgdGhpcyBpbiBgbmFuZF9kb19wbGF0Zm9ybV9jaGVjaygpYCwKYnV0IHdoZW4gSSBjaGVj
a2VkIGZvciBwb3RlbnRpYWwgYWR2ZXJzZSBpbXBhY3Qgb24gb3RoZXIgYm9hcmRzCkkgZm91bmQg
dGhhdCB0aGVyZSB3YXMgYW4gdW5mb3J0dW5hdGUgZXhjZXB0aW9uIHdpdGggdGhlCnBpc3RhY2hp
byBtYXJkdWNrIGJvYXJkLCB3aGljaCBwYXNzZXMgYGltZyxwaXN0YWNoaW8tbWFyZHVrYAp0byBu
YW5kX2RvX3BsYXRmb3JtX2NoZWNrKCksIHByZXZlbnRpbmcgYSAiYmxpbmQiIGNoYW5nZQppbiB0
aGF0IGZ1bmN0aW9uWzFdLiAiaW1nIiBpcyBhcHBhcmVudGx5IGZyb20gImltZ3RlYy5jb20iLgoK
V2hpbGUgYHRhcmdldC9saW51eC9waXN0YWNoaW8vaW1hZ2UvTWFrZWZpbGVgIHVzZXMKCiAgICAg
SU1BR0Uvc3lzdXBncmFkZS50YXIgOj0gc3lzdXBncmFkZS10YXIKCml0IGFsc28gZGVmaW5lcyBh
IGN1c3RvbSBib2FyZCBuYW1lCgogICAgIGRlZmluZSBEZXZpY2UvbWFyZHVrCiAgICAgICBCT0FS
RF9OQU1FIDo9IGltZyxwaXN0YWNoaW8tbWFyZHVrCiAgICAgICBERVZJQ0VfRFRTIDo9IGltZy9w
aXN0YWNoaW9fbWFyZHVrCgphcHBhcmVudGx5IHJlc3VsdGluZyBpbiB0aGUgY29tbWEgYmVpbmcg
aW4gdGhlIHRhciBkaXJlY3RvcnkKCiAgICAgc3lzdXBncmFkZS1pbWcscGlzdGFjaGlvLW1hcmR1
ay8KICAgICBzeXN1cGdyYWRlLWltZyxwaXN0YWNoaW8tbWFyZHVrL3Jvb3QKICAgICBzeXN1cGdy
YWRlLWltZyxwaXN0YWNoaW8tbWFyZHVrL0NPTlRST0wKICAgICBzeXN1cGdyYWRlLWltZyxwaXN0
YWNoaW8tbWFyZHVrL2tlcm5lbAoKV2hpbGUgdGhpcyBsaWtlbHkgY291bGQgYmUgZml4ZWQgYnkg
dW5pZnlpbmcgdGhlIGJvYXJkIG5hbWUKYW5kIHRhciBkaXJlY3RvcnkgbmFtZSB3aXRoIGN1cnJl
bnQgY29udmVudGlvbiwgSSdtIGhlc2l0YW50CnRvIGNoYW5nZSBhIGRldmljZSBidWlsZCB0aGF0
IEkgY2FuJ3QgdGVzdCwgZXNwZWNpYWxseSBhcm91bmQKZmxhc2hpbmcgYW5kIHVwZ3JhZGUuCgoK
QXMgYSBzaWRlIG5vdGUsIHRoZSBwaXN0YWNoaW8gcGxhdGZvcm0gaXMgYSAic25vd2ZsYWtlIgpp
biBvdGhlciB3YXlzLCBpbmNsdWRpbmcgd2hhdCBsb29rcyBsaWtlIGEgY3VzdG9tIFNQSS1OQU5E
CmZyYW1ld29yayBvcmlnaW5hbGx5IG9uIExpbnV4IDQuOS4gYGdpdCBsb2cgLTEgNTJjMTdiZmYz
Y2AKCgpUaGUgcmVtYWluZGVyIG9mIHRoZSBib2FyZHMgdGhhdCBJIGZvdW5kIHRoYXQgY2FsbCBg
bmFuZF9kb19wbGF0Zm9ybV9jaGVjaygpYApkbyBzbyB3aXRoIGEgY29tbWEtZnJlZSBib2FyZF9u
YW1lIG9yIHdpdGggYW4gZXhwbGljaXQsIGNvbW1hLWZyZWUgc3RyaW5nLgpTdXJwcmlzaW5nbHkg
ZmV3IG1ha2UgdGhpcyBjaGVjazsgYXRoNzksIGlteDYsIGFyNzF4eCwgbGF5ZXJzY2FwZQoKCgpG
b3IgY2xhcml0eSwgb3J0aG9nb25hbGl0eSwgYW5kIG1haW50YWluYWJpbGl0eSwgSSB3YXMgY29u
c2lkZXJpbmcKaGFuZGxpbmcgdGhpcyB3aXRoIHR3bywgZGlzdGluY3QgY29tbWl0czoKCigxKSBB
ZGQgdGhlICJhdXRvbWF0aWMiIGZpcnN0LWNvbW1hLXRvLXVuZGVyc2NvcmUgdHJhbnNmb3JtYXRp
b24gdG8KICAgICBwYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvbGliL3VwZ3JhZGUvbmFuZC5zaDpu
YW5kX2RvX3BsYXRmb3JtX2NoZWNrKCkKCigyKSBBZGQgYSBzcGVjaWZpYyBleGNlcHRpb24gdG8g
KDEpIGZvciBgaW1nLHBpc3RhY2hpby1tYXJkdWtgCgoKSXMgdGhpcyBhIHJlYXNvbmFibGUgYXBw
cm9hY2g/CgoKCgoKWy4uLl0KCj4+IGRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYXRoNzkvaW1h
Z2UvbmFuZC5tayBiL3RhcmdldC9saW51eC9hdGg3OS9pbWFnZS9uYW5kLm1rCj4+IGluZGV4IGU2
OWRlMjliYjIuLjdkYjVmNTFjOTggMTAwNjQ0Cj4+IC0tLSBhL3RhcmdldC9saW51eC9hdGg3OS9p
bWFnZS9uYW5kLm1rCj4+ICsrKyBiL3RhcmdldC9saW51eC9hdGg3OS9pbWFnZS9uYW5kLm1rCj4+
IEBAIC0wLDAgKzEsMTUgQEAKPj4gK2RlZmluZSBEZXZpY2UvZ2xpbmV0X2dsLWFyNzUwcy1uYW5k
Cj4+ICsgIEFUSF9TT0MgOj0gcWNhOTU2Mwo+PiArICBERVZJQ0VfVElUTEUgOj0gR0wuaU5ldCBH
TC1BUjc1MFMKPj4gKyAgREVWSUNFX1BBQ0tBR0VTIDo9IGttb2QtdXNiMiBrbW9kLWF0aDEway1j
dCBhdGgxMGstZmlybXdhcmUtcWNhOTg4Ny1jdCBrbW9kLWkyYy1ncGlvCj4+ICsgIEtFUk5FTF9T
SVpFIDo9IDIwNDhrCj4+ICsgIEJMT0NLU0laRSA6PSAxMjhrCj4+ICsgIFBBR0VTSVpFIDo9IDIw
NDgKPj4gKyAgVklEX0hEUl9PRkZTRVQgOj0gMjA0OAo+PiArICBJTUFHRVMgKz0gZmFjdG9yeS5p
bWcKPj4gKyAgSU1BR0Uvc3lzdXBncmFkZS5iaW4gOj0gc3lzdXBncmFkZS10YXIgfCBhcHBlbmQt
bWV0YWRhdGEKPj4gKyAgSU1BR0UvZmFjdG9yeS5pbWcgOj0gYXBwZW5kLWtlcm5lbCB8IHBhZC10
byAkJCQkKEtFUk5FTF9TSVpFKSB8IGFwcGVuZC11YmkKPj4gKyAgU1VQUE9SVEVEX0RFVklDRVMg
Kz0gZ2wtYXI3NTBzCj4gSSdtIHJlYWxseSBub3Qgc3VyZSBhYm91dCB0aGlzLiBEbyB3ZSd2ZSBl
bm91Z2ggY2hlY2tzIGluIHBsYWNlLCB0aGF0IHdlIHdvbid0Cj4gYWxsb3cgc3lzdXBncmFkZSBm
cm9tIE5PUj8KPgoKVGhlIGF0aDc5IGJ1aWxkcywgcHJpb3IgdG8gdGhpcyBwcm9wb3NlZCBwYXRj
aCBzZXQsIHVzZSBgZ2xpbmV0LGdsLWFyNzUwc2AsCnNvIGFyZSBub3QgaW1wYWN0ZWQuIEFmdGVy
IHRoaXMgcGF0Y2ggc2V0IHRoZXJlIHdpbGwgYmUgYSBgLW5vcmAgYW5kIGAtbmFuZGAKc3VmZml4
IHRvIGNsZWFybHkgZGlmZmVyZW50aWF0ZSBiZXR3ZWVuIHRoZSB0d28gdmFyaWFudHMuCgpUaGUg
YGdsLWFyNzUwc2AgYm9hcmQgbmFtZSBjb21lcyBmcm9tIGFyNzF4eCBidWlsZHMgZm9yIHRoaXMg
Ym9hcmQsCmVpdGhlciBmcm9tIE9wZW5XcnQgb3IgR0wuaU5ldCAoYmFzZWQgb24gMTguMDYuMSkg
c291cmNlWzJdLgoKR0wuaU5ldCBvbmx5IHByb3ZpZGVzIHRoZSBOQU5ELWJhc2VkIHZhcmlhbnQg
dGhyb3VnaCB0aGVpciBkb3dubG9hZCBzaXRlWzNdLApmcm9tIHdoYXQgSSBjYW4gdGVsbC4gR0wu
aU5ldCBhbmQgdGhlaXIgVS1Cb290IGRpZmZlcmVudGlhdGUgTk9SLWJhc2VkCndpdGggYSAuYmlu
IGV4dGVuc2lvbiwgTkFORC1iYXNlZCB3aXRoIGEgLmltZyBvciAudGFyIGV4dGVuc2lvbi4KCiBG
cm9tIHRhcmdldC9saW51eC9hcjcxeHgvYmFzZS1maWxlcy9saWIvdXBncmFkZS9wbGF0Zm9ybS5z
aAoKICAgICAzMzEgICAgICAgICAgICAgICAgIFsgIiRtYWdpYyIgIT0gIjI3MDUiIF0gJiYgewog
ICAgIDMzMiAgICAgICAgICAgICAgICAgICAgICAgICBlY2hvICJJbnZhbGlkIGltYWdlIHR5cGUu
IgogICAgIDMzMyAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gMQogICAgIDMzNCAgICAg
ICAgICAgICAgICAgfQogICAgIDMzNQogICAgIDMzNiAgICAgICAgICAgICAgICAgcmV0dXJuIDAK
ICAgICAzMzcgICAgICAgICAgICAgICAgIDs7CgoiMjcwNSIgaXMga2V5aW5nIG9mZiBVLUJvb3Qn
cwoKICAgICAjZGVmaW5lIElIX01BR0lDCTB4MjcwNTE5NTYJLyogSW1hZ2UgTWFnaWMgTnVtYmVy
CQkqLwoKR0wuaU5ldCBwcm92aWRlcyBzaW1pbGFyIGNoZWNrcyBmb3IgdGhlaXIgYm9hcmRzIGlu
IHRoZWlyIHNvdXJjZQppbmNsdWRpbmcgZGV0ZWN0aW9uIGlmIGBnbF9ib2FyZF9pc19uYW5kKClg
IFs0XS4KCkkgaGF2ZSBjb25maXJtZWQgdGhhdCB0aGlzIHdvcmtzIGFzIGV4cGVjdGVkIG9uIE9w
ZW5XcnQgc25hcHNob3RzCmFzIHdlbGwgYXMgZnJvbSBhIE5PUi1iYXNlZCBidWlsZCBmcm9tIHRo
ZSBHTC5pTmV0IHNvdXJjZXMuCgoKClN1cnByaXNpbmdseSwgdGhlcmUgaXMgbm8gZmlyc3Qtb3Jk
ZXIgaW1hZ2UgY2hlY2sgZm9yIHRoZSBhdGg3OSBwbGF0Zm9ybS4KVGhpcyB3b3VsZCBiZSBhIHBy
b2plY3QgdW50byBpdHNlbGYsIGJhc2VkIG9uIGxvb2tpbmcgYXQgdGhlIGFyNzF4eCBjb2RlLgoK
CgoKSmVmZgoKCi0tLQoKWzFdIGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL3BpcGVybWFpbC9v
cGVud3J0LWRldmVsLzIwMTktTWF5LzAxNzA0NS5odG1sCgpbMl0gaHR0cHM6Ly9naXRodWIuY29t
L2dsLWluZXQvb3BlbndydAogIApbM10gaHR0cHM6Ly9kbC5nbC1pbmV0LmNvbS9maXJtd2FyZS9h
cjc1MHMvCgpbNF0gaHR0cHM6Ly9naXRodWIuY29tL2dsLWluZXQvb3BlbndydC9ibG9iL2RldmVs
b3AvdGFyZ2V0L2xpbnV4L2FyNzF4eC9iYXNlLWZpbGVzL2xpYi91cGdyYWRlL3BsYXRmb3JtLnNo
I0wyMTUKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQu
b3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRl
dmVsCg==
