Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA046142E41
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Jan 2020 16:02:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h5CR8uNBfpwSR7UgDbIFt3EQvjvEME8eIu0clS33ges=; b=PFcOwHbOleDxuk
	Fn5/3oeKnA9ZpNLnvPjkV2iOnQW+zol0J8hRmyJt3HExn/DWdEb6YVpyfhMCFtc3cF7F32S4PhzD0
	0Ubt5Dr0Pxr76IrzsO3JbKOcc9MkIpLlit6TWhZG7jxaEkjZtZTLRHOcDyNOqYWRu1GX8fVmPAy1U
	pb4zuvH3/sMPL1R3YZcDVnJY/AAntFgq2dCxAdhZbkszjse89WbKaqooonoyCvVuq/j6sWy4M38Do
	TiRHzpwWRC/DRksK5seMccgYFrK9VYnRzD/Yq08prumqLE3NIYXYA5ZsUvYpUVPSjSspagBx8iiu8
	9PTuLcrSe53NvCGepbug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itYYz-0002Fm-At; Mon, 20 Jan 2020 15:02:01 +0000
Received: from mx-out.tlen.pl ([193.222.135.140])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itYYf-00027d-79
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 15:01:46 +0000
Received: (wp-smtpd smtp.tlen.pl 19769 invoked from network);
 20 Jan 2020 16:01:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1579532498; bh=jPltJOzedV/D/x4FIHQhwL+gurlIapH5L8+nikBmIkY=;
 h=Subject:To:From;
 b=tm5Uq3p1MoyOLAsVx17GrfJc4LXGWgFaWv1QhAZTHxhg8ez2oDA9Zq0rkN0L8jjkE
 rM9kY/JA4buCmd4SAAERlq+i3Ftph+8tZbFx5hUcg51JpKBGg8RG4CX3ihA231wu9c
 R5lPWHG8PI8WTkr54Hgc8YTQ6wWBjULEl6rL8ssY=
Received: from 131.ip-164-132-48.eu (HELO [10.8.0.6])
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 20 Jan 2020 16:01:38 +0100
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20200118012115.46148-1-freifunk@adrianschmutzler.de>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <f7910f90-42cc-adea-c6ad-2ef6206ed228@o2.pl>
Date: Mon, 20 Jan 2020 16:01:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200118012115.46148-1-freifunk@adrianschmutzler.de>
Content-Language: en-US
X-WP-MailID: 9ee8a259cb5e16faf9b8861dbfecb37a
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [oTMh]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_070141_421882_E78761A4 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] mvebu: move subtarget image
 Makefile switch to parent Makefile
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VyBkbml1IDE4LjAxLjIwMjAgb8KgMDI6MjEsIEFkcmlhbiBTY2htdXR6bGVyIHBpc3plOgo+IFRo
aXMgbW92ZXMgdGhlIGlmIGNvbmRpdGlvbnMgZm9yIGNob29zaW5nIHdoaWNoIGltYWdlIE1ha2Vm
aWxlcwo+IGFyZSB1c2VkIHRvIHRoZSBwYXJlbnQgaW1hZ2UvTWFrZWZpbGUuIEl0IHNlZW1zIG1v
cmUgY29udmVuaWVudAo+IHRvIGhhdmUgImNvZGVmbG93IiBpbiB0aGUgcGFyZW50IHdoaWxlIHRo
ZSBzdWJ0YXJnZXQtc3BlY2lmaWMKPiBmaWxlcyBvbmx5IGNvbnRhaW4gdGhlIGRlZmluaXRpb25z
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFkcmlhbiBTY2htdXR6bGVyIDxmcmVpZnVua0BhZHJpYW5z
Y2htdXR6bGVyLmRlPgoKQWNrZWQtYnk6IFRvbWFzeiBNYWNpZWogTm93YWsgPHRvbWVrX25AbzIu
cGw+Cgo+IC0tLQo+ICB0YXJnZXQvbGludXgvbXZlYnUvaW1hZ2UvTWFrZWZpbGUgICAgICB8IDgg
KysrKysrKysKPiAgdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL2NvcnRleC1hNTMubWsgfCA0IC0t
LS0KPiAgdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL2NvcnRleC1hNzIubWsgfCA0IC0tLS0KPiAg
dGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL2NvcnRleC1hOS5tayAgfCA0IC0tLS0KPiAgNCBmaWxl
cyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS90YXJnZXQvbGludXgvbXZlYnUvaW1hZ2UvTWFrZWZpbGUgYi90YXJnZXQvbGludXgvbXZl
YnUvaW1hZ2UvTWFrZWZpbGUKPiBpbmRleCBjZTEzNDRhNTQ3Li42ZGQ3YmRlN2FlIDEwMDY0NAo+
IC0tLSBhL3RhcmdldC9saW51eC9tdmVidS9pbWFnZS9NYWtlZmlsZQo+ICsrKyBiL3RhcmdldC9s
aW51eC9tdmVidS9pbWFnZS9NYWtlZmlsZQo+IEBAIC0xMTYsOCArMTE2LDE2IEBAIGRlZmluZSBE
ZXZpY2UvTkFORC01MTJLCj4gICAgUEFHRVNJWkUgOj0gNDA5Ngo+ICBlbmRlZgo+ICAKPiAraWZl
cSAoJChTVUJUQVJHRVQpLGNvcnRleGE5KQo+ICBpbmNsdWRlIGNvcnRleC1hOS5tawo+ICtlbmRp
Zgo+ICsKPiAraWZlcSAoJChTVUJUQVJHRVQpLGNvcnRleGE1MykKPiAgaW5jbHVkZSBjb3J0ZXgt
YTUzLm1rCj4gK2VuZGlmCj4gKwo+ICtpZmVxICgkKFNVQlRBUkdFVCksY29ydGV4YTcyKQo+ICBp
bmNsdWRlIGNvcnRleC1hNzIubWsKPiArZW5kaWYKPiAgCj4gICQoZXZhbCAkKGNhbGwgQnVpbGRJ
bWFnZSkpCj4gZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9tdmVidS9pbWFnZS9jb3J0ZXgtYTUz
Lm1rIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL2NvcnRleC1hNTMubWsKPiBpbmRleCBmNTMx
MzQyOWFmLi5lNThhM2M0MmI5IDEwMDY0NAo+IC0tLSBhL3RhcmdldC9saW51eC9tdmVidS9pbWFn
ZS9jb3J0ZXgtYTUzLm1rCj4gKysrIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL2NvcnRleC1h
NTMubWsKPiBAQCAtMSw1ICsxLDMgQEAKPiAtaWZlcSAoJChTVUJUQVJHRVQpLGNvcnRleGE1MykK
PiAtCj4gIGRlZmluZSBEZXZpY2UvZ2xvYmFsc2NhbGVfZXNwcmVzc29iaW4KPiAgICAkKGNhbGwg
RGV2aWNlL0RlZmF1bHQtYXJtNjQpCj4gICAgREVWSUNFX1ZFTkRPUiA6PSBNYXJ2ZWxsCj4gQEAg
LTczLDUgKzcxLDMgQEAgZGVmaW5lIERldmljZS9tZXRob2RlX3VkcHUKPiAgICBCT09UX1NDUklQ
VCA6PSB1ZHB1Cj4gIGVuZGVmCj4gIFRBUkdFVF9ERVZJQ0VTICs9IG1ldGhvZGVfdWRwdQo+IC0K
PiAtZW5kaWYKPiBkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL2NvcnRleC1h
NzIubWsgYi90YXJnZXQvbGludXgvbXZlYnUvaW1hZ2UvY29ydGV4LWE3Mi5tawo+IGluZGV4IDVl
NjE5ODA0ZTguLjZhYmVlMmQ4YjkgMTAwNjQ0Cj4gLS0tIGEvdGFyZ2V0L2xpbnV4L212ZWJ1L2lt
YWdlL2NvcnRleC1hNzIubWsKPiArKysgYi90YXJnZXQvbGludXgvbXZlYnUvaW1hZ2UvY29ydGV4
LWE3Mi5tawo+IEBAIC0xLDUgKzEsMyBAQAo+IC1pZmVxICgkKFNVQlRBUkdFVCksY29ydGV4YTcy
KQo+IC0KPiAgZGVmaW5lIERldmljZS9tYXJ2ZWxsX21hY2NoaWF0b2Jpbgo+ICAgICQoY2FsbCBE
ZXZpY2UvRGVmYXVsdC1hcm02NCkKPiAgICBERVZJQ0VfVkVORE9SIDo9IFNvbGlkUnVuCj4gQEAg
LTI5LDUgKzI3LDMgQEAgZGVmaW5lIERldmljZS9tYXJ2ZWxsX2FybWFkYTcwNDAtZGIKPiAgICBJ
TUFHRS9zZGNhcmQuaW1nLmd6IDo9IGJvb3QtaW1nLWV4dDQgfCBzZGNhcmQtaW1nLWV4dDQgfCBn
emlwIHwgYXBwZW5kLW1ldGFkYXRhCj4gIGVuZGVmCj4gIFRBUkdFVF9ERVZJQ0VTICs9IG1hcnZl
bGxfYXJtYWRhNzA0MC1kYgo+IC0KPiAtZW5kaWYKPiBkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4
L212ZWJ1L2ltYWdlL2NvcnRleC1hOS5tayBiL3RhcmdldC9saW51eC9tdmVidS9pbWFnZS9jb3J0
ZXgtYTkubWsKPiBpbmRleCBjMmFkYTc1YzJkLi4zODkwODJlNDI2IDEwMDY0NAo+IC0tLSBhL3Rh
cmdldC9saW51eC9tdmVidS9pbWFnZS9jb3J0ZXgtYTkubWsKPiArKysgYi90YXJnZXQvbGludXgv
bXZlYnUvaW1hZ2UvY29ydGV4LWE5Lm1rCj4gQEAgLTYsOCArNiw2IEBACj4gICMgU2VlIC9MSUNF
TlNFIGZvciBtb3JlIGluZm9ybWF0aW9uLgo+ICAjCj4gIAo+IC1pZmVxICgkKFNVQlRBUkdFVCks
Y29ydGV4YTkpCj4gLQo+ICBkZWZpbmUgRGV2aWNlL2xpbmtzeXMKPiAgICAkKERldmljZS9OQU5E
LTEyOEspCj4gICAgREVWSUNFX1ZFTkRPUiA6PSBMaW5rc3lzCj4gQEAgLTIxOCw1ICsyMTYsMyBA
QCBkZWZpbmUgRGV2aWNlL2N6bmljX3R1cnJpcy1vbW5pYQo+ICAgIFNVUFBPUlRFRF9ERVZJQ0VT
ICs9IGFybWFkYS0zODUtdHVycmlzLW9tbmlhCj4gIGVuZGVmCj4gIFRBUkdFVF9ERVZJQ0VTICs9
IGN6bmljX3R1cnJpcy1vbW5pYQo+IC0KPiAtZW5kaWYKPiAKCgotLSAKVE1OCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxp
bmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Bl
bndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
