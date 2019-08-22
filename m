Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4274298B74
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 08:35:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fRPVq72bqIWr65wNiLCE0Nua4S7b5j4LaNxV0codIO4=; b=ta59/+hBHLcPyOpztu042zQ+I
	f1fr142OSC01TAXBU0JGICrwCIgJ/lmpWi+CvOyCyt4scRAdAgluIVK2ojB25uaMyMn+h98ofoRqw
	ytsV4sAas6grCL+QsNHgvSt1J/G54utVFpkbfA1qL6Jy9uoRxq7AmjrC3Z5Jf8Migcx9/kZyPEGXg
	muRrwbB0ClcuFEmpagl5aNyxhGxhDSS6ocqg6KW1F3TfVuOsi4LnhL6v8egPp0mRX1/Ma7zTO3QNZ
	UEUXyE3U6hPyBveTMHRx6+owDBSnjwnXPsF27U46eqqwM+2bqGxowpu+BU5H6jpDfHbeRpdp1vDr6
	XzTxVmqxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0gh8-0003lS-Oi; Thu, 22 Aug 2019 06:35:38 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0ggL-0003kz-0L
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 06:34:53 +0000
Received: from pd95fd646.dip0.t-ipconnect.de ([217.95.214.70]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1i0ggH-0008IC-CX; Thu, 22 Aug 2019 08:34:45 +0200
To: Paul Spooren <mail@aparcar.org>, openwrt-devel@lists.openwrt.org
References: <20190822005924.32310-1-mail@aparcar.org>
From: John Crispin <john@phrozen.org>
Message-ID: <40b56056-3fc8-931f-81d8-97e3b78d6004@phrozen.org>
Date: Thu, 22 Aug 2019 08:34:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190822005924.32310-1-mail@aparcar.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_233449_449765_BE5F46BB 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ipqx0xx: add Generic subtarget
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMjIvMDgvMjAxOSAwMjo1OSwgUGF1bCBTcG9vcmVuIHdyb3RlOgo+IEJvdGggdGFyZ2V0cyBt
aXNzIGEgc3VidGFyZ2V0IGNhdXNpbmcgYW4gaW1hZ2UgbmFtaW5nIHN0eWxlIHdoaWNoIGlzCj4g
ZGlmZmVyZW50IGZyb20gb3RoZXIgYWxsIG90aGUgdGFyZ2V0cywgZXZlbiB0aG8gaXQgYWxyZWFk
eSB1c2VzCj4gYHgvZ2VuZXJpYy9gIGFzIHN1YmZvbGRlciBhcyBpZiB0aGUgc3VidGFyZ2V0IHdv
dWxkIGV4aXN0Lgo+Cj4gVGhpcyBjb21taXQgYWRkcyB0aGUgR2VuZXJpYyBzdWJ0YXJnZXQgcmVz
dWx0aW5nIGluIGNvbnNpc3RlbnQgbmFtaW5nLgo+Cj4gICAgICB+L3NyYy9vcGVud3J0L29wZW53
cnQvYmluL3RhcmdldHMvaXBxODA2eC9nZW5lcmljJCBscwo+ICAgICAgb3BlbndydC1pcHE4MDZ4
LWdlbmVyaWMtbmV0Z2Vhcl9kNzgwMC1pbml0cmFtZnMtdUltYWdlCj4gICAgICBvcGVud3J0LWlw
cTgwNngtZ2VuZXJpYy1uZXRnZWFyLWQ3ODAwLm1hbmlmZXN0Cj4gICAgICBvcGVud3J0LWlwcTgw
NngtZ2VuZXJpYy1uZXRnZWFyX2Q3ODAwLXNxdWFzaGZzLWZhY3RvcnkuaW1nCj4gICAgICBvcGVu
d3J0LWlwcTgwNngtZ2VuZXJpYy1uZXRnZWFyX2Q3ODAwLXNxdWFzaGZzLXN5c3VwZ3JhZGUuYmlu
CgpXaHkgd291bGQgd2UgbmVlZCB0byBoYXZlIHRoZSBnZW5lcmljIGluIHRoZSBuYW1lIGlmIHRo
ZXJlIGlzIG5vIG90aGVyIApub24tZ2VuZXJpYyBzdWJ0YXJnZXQgPwoKIMKgwqDCoCBKb2huCgoK
PiBDQzogSm9obiBDcmlzcGluIDxqb2huQHBocm96ZW4ub3JnPgo+Cj4gU2lnbmVkLW9mZi1ieTog
UGF1bCBTcG9vcmVuIDxtYWlsQGFwYXJjYXIub3JnPgo+IC0tLQo+ICAgdGFyZ2V0L2xpbnV4L2lw
cTQweHgvTWFrZWZpbGUgICAgICAgICAgfCAxICsKPiAgIHRhcmdldC9saW51eC9pcHE0MHh4L2dl
bmVyaWMvdGFyZ2V0Lm1rIHwgMSArCj4gICB0YXJnZXQvbGludXgvaXBxODA2eC9NYWtlZmlsZSAg
ICAgICAgICB8IDEgKwo+ICAgdGFyZ2V0L2xpbnV4L2lwcTgwNngvZ2VuZXJpYy90YXJnZXQubWsg
fCAxICsKPiAgIDQgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4gICBjcmVhdGUgbW9k
ZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L2lwcTQweHgvZ2VuZXJpYy90YXJnZXQubWsKPiAgIGNyZWF0
ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvaXBxODA2eC9nZW5lcmljL3RhcmdldC5tawo+Cj4g
ZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9pcHE0MHh4L01ha2VmaWxlIGIvdGFyZ2V0L2xpbnV4
L2lwcTQweHgvTWFrZWZpbGUKPiBpbmRleCA5Yjc4ZDFmMWJmLi45ZTI2YjI3N2ZhIDEwMDY0NAo+
IC0tLSBhL3RhcmdldC9saW51eC9pcHE0MHh4L01ha2VmaWxlCj4gKysrIGIvdGFyZ2V0L2xpbnV4
L2lwcTQweHgvTWFrZWZpbGUKPiBAQCAtNyw2ICs3LDcgQEAgRkVBVFVSRVM6PXNxdWFzaGZzIGZw
dSByYW1kaXNrIG5hbmQKPiAgIENQVV9UWVBFOj1jb3J0ZXgtYTcKPiAgIENQVV9TVUJUWVBFOj1u
ZW9uLXZmcHY0Cj4gICBNQUlOVEFJTkVSOj1Kb2huIENyaXNwaW4gPGpvaG5AcGhyb3plbi5vcmc+
Cj4gK1NVQlRBUkdFVFM6PWdlbmVyaWMKPiAgIAo+ICAgS0VSTkVMX1BBVENIVkVSOj00LjE5Cj4g
ICAKPiBkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2lwcTQweHgvZ2VuZXJpYy90YXJnZXQubWsg
Yi90YXJnZXQvbGludXgvaXBxNDB4eC9nZW5lcmljL3RhcmdldC5tawo+IG5ldyBmaWxlIG1vZGUg
MTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMC4uZjVjYjFmYjE5Ygo+IC0tLSAvZGV2L251bGwKPiAr
KysgYi90YXJnZXQvbGludXgvaXBxNDB4eC9nZW5lcmljL3RhcmdldC5tawo+IEBAIC0wLDAgKzEg
QEAKPiArQk9BUkROQU1FOj1HZW5lcmljCj4gZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9pcHE4
MDZ4L01ha2VmaWxlIGIvdGFyZ2V0L2xpbnV4L2lwcTgwNngvTWFrZWZpbGUKPiBpbmRleCBjZDBl
OGI4MmVhLi4xOWVkMDE1ZWJjIDEwMDY0NAo+IC0tLSBhL3RhcmdldC9saW51eC9pcHE4MDZ4L01h
a2VmaWxlCj4gKysrIGIvdGFyZ2V0L2xpbnV4L2lwcTgwNngvTWFrZWZpbGUKPiBAQCAtOSw2ICs5
LDcgQEAgRkVBVFVSRVM6PXNxdWFzaGZzIG5hbmQgZnB1IHJhbWRpc2sKPiAgIENQVV9UWVBFOj1j
b3J0ZXgtYTE1Cj4gICBDUFVfU1VCVFlQRTo9bmVvbi12ZnB2NAo+ICAgTUFJTlRBSU5FUjo9Sm9o
biBDcmlzcGluIDxqb2huQHBocm96ZW4ub3JnPgo+ICtTVUJUQVJHRVRTOj1nZW5lcmljCj4gICAK
PiAgIEtFUk5FTF9QQVRDSFZFUjo9NC4xNAo+ICAgCj4gZGlmZiAtLWdpdCBhL3RhcmdldC9saW51
eC9pcHE4MDZ4L2dlbmVyaWMvdGFyZ2V0Lm1rIGIvdGFyZ2V0L2xpbnV4L2lwcTgwNngvZ2VuZXJp
Yy90YXJnZXQubWsKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAuLmY1
Y2IxZmIxOWIKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvdGFyZ2V0L2xpbnV4L2lwcTgwNngvZ2Vu
ZXJpYy90YXJnZXQubWsKPiBAQCAtMCwwICsxIEBACj4gK0JPQVJETkFNRTo9R2VuZXJpYwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
