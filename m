Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DB6809F6
	for <lists+openwrt-devel@lfdr.de>; Sun,  4 Aug 2019 10:25:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZKpmMWoX3k8Kbj2fXEubiqMRh2GeB/xx7ARozku498Q=; b=M446Z4FaqnDNQr5ArnbHPPi3G
	3WLfS89wjnXy7rVLDPCCxQ+L1c/2z7bPyFUDpMlpuOOKixnYyEz/ofZ+dwKW5M7Yao1C2yFuz2fun
	2At0uv1hU3GqFIkqoJdOOmozIyZnZRK1dYwxXaTDu5RTvvQcf1bmPhnAhUVjO9XOA1RoBxdb83BX3
	ZOaVhKiFc4vf2g81UPA4/fA810r9szDrupXxDE0tv6mRIFwfKIErH08yTyiHEBcolLlmEUrHV+DPI
	Igwm2bf3CoZvlYTInRHr3SAgRBwr1/KfTD7yxGKwfgwHj3OeaEu1uZ+Sjh0h8+oTsdl4hzvWrhYCj
	wtJUoFAaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huBpU-0005gc-82; Sun, 04 Aug 2019 08:25:24 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huBpE-0004hg-J4
 for openwrt-devel@lists.openwrt.org; Sun, 04 Aug 2019 08:25:10 +0000
Received: from p5dcfb2be.dip0.t-ipconnect.de ([93.207.178.190]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1huBp7-0007f5-Af; Sun, 04 Aug 2019 10:25:01 +0200
To: Ingo Feinerer <feinerer@logic.at>, openwrt-devel@lists.openwrt.org
References: <20190804045636.37168-1-feinerer@logic.at>
From: John Crispin <john@phrozen.org>
Message-ID: <948c9a08-2e1a-6a8f-55b6-fd49902ce7d3@phrozen.org>
Date: Sun, 4 Aug 2019 10:25:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190804045636.37168-1-feinerer@logic.at>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_012508_789361_29401934 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] umbim: add home provider query support
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

Ck9uIDA0LzA4LzIwMTkgMDY6NTYsIEluZ28gRmVpbmVyZXIgd3JvdGU6Cj4gVGhpcyBhZGRzIHN1
cHBvcnQgdG8gcXVlcnkgdGhlIGhvbWUgcHJvdmlkZXIsIG1haW5seSBmb3IgZGVidWdnaW5nIGFu
ZAo+IGluZm9ybWF0aW9uIHB1cnBvc2VzLgo+Cj4gU2lnbmVkLW9mZi1ieTogSW5nbyBGZWluZXJl
ciA8ZmVpbmVyZXJAbG9naWMuYXQ+Cj4gLS0tCj4gICBjbGkuYyB8IDM2ICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDM1IGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9jbGkuYyBiL2NsaS5jCj4gaW5kZXgg
MTlmMzZmNC4uZWE3ZTBiMCAxMDA2NDQKPiAtLS0gYS9jbGkuYwo+ICsrKyBiL2NsaS5jCj4gQEAg
LTk1LDYgKzk1LDMxIEBAIG1iaW1fcGluX3N0YXRlX3Jlc3BvbnNlKHZvaWQgKmJ1ZmZlciwgc2l6
ZV90IGxlbikKPiAgIAlyZXR1cm4gMDsKPiAgIH0KPiAgIAo+ICtzdGF0aWMgaW50Cj4gK21iaW1f
aG9tZV9wcm92aWRlcl9yZXNwb25zZSh2b2lkICpidWZmZXIsIHNpemVfdCBsZW4pCj4gK3sKPiAr
CXN0cnVjdCBtYmltX2Jhc2ljX2Nvbm5lY3RfaG9tZV9wcm92aWRlcl9yICpzdGF0ZSA9IChzdHJ1
Y3QgbWJpbV9iYXNpY19jb25uZWN0X2hvbWVfcHJvdmlkZXJfciAqKSBidWZmZXI7Cj4gKwljaGFy
ICpwcm92aWRlcl9pZCwgKnByb3ZpZGVyX25hbWU7Cj4gKwo+ICsJaWYgKGxlbiA8IHNpemVvZihz
dHJ1Y3QgbWJpbV9iYXNpY19jb25uZWN0X2hvbWVfcHJvdmlkZXJfcikpIHsKPiArCQlmcHJpbnRm
KHN0ZGVyciwgIm1lc3NhZ2Ugbm90IGxvbmcgZW5vdWdoXG4iKTsKPiArCQlyZXR1cm4gLTE7Cj4g
Kwl9Cj4gKwlzdHJ1Y3QgbWJpbXByb3ZpZGVyICpwcm92aWRlciA9ICZzdGF0ZS0+cHJvdmlkZXI7
CgpwbGVhc2UgbW92ZSB0aGlzIHRvIHRoZSBzdGFydCBvZiB0aGUgZnVuY3Rpb24KCiDCoMKgwqAg
Sm9obgoKCj4gKwo+ICsJcHJvdmlkZXJfaWQgPSBtYmltX2dldF9zdHJpbmcoJnByb3ZpZGVyLT5w
cm92aWRlcmlkLCBidWZmZXIpOwo+ICsJcHJvdmlkZXJfbmFtZSA9IG1iaW1fZ2V0X3N0cmluZygm
cHJvdmlkZXItPnByb3ZpZGVybmFtZSwgYnVmZmVyKTsKPiArCj4gKwlwcmludGYoIiAgcHJvdmlk
ZXJfaWQ6ICVzXG4iLCBwcm92aWRlcl9pZCk7Cj4gKwlwcmludGYoIiAgcHJvdmlkZXJfbmFtZTog
JXNcbiIsIHByb3ZpZGVyX25hbWUpOwo+ICsJcHJpbnRmKCIgIGNlbGx1bGFyY2xhc3M6ICUwNFgg
LSAlc1xuIiwgbGUzMnRvaChwcm92aWRlci0+Y2VsbHVsYXJjbGFzcyksCj4gKwkJbWJpbV9lbnVt
X3N0cmluZyhtYmltX2NlbGx1bGFyX2NsYXNzX3ZhbHVlcywgbGUzMnRvaChwcm92aWRlci0+Y2Vs
bHVsYXJjbGFzcykpKTsKPiArCXByaW50ZigiICByc3NpOiAlMDRYXG4iLCBsZTMydG9oKHByb3Zp
ZGVyLT5yc3NpKSk7Cj4gKwlwcmludGYoIiAgZXJyb3JyYXRlOiAlMDRYXG4iLCBsZTMydG9oKHBy
b3ZpZGVyLT5lcnJvcnJhdGUpKTsKPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiAgIHN0YXRp
YyBpbnQKPiAgIG1iaW1fcmVnaXN0cmF0aW9uX3Jlc3BvbnNlKHZvaWQgKmJ1ZmZlciwgc2l6ZV90
IGxlbikKPiAgIHsKPiBAQCAtMjk0LDYgKzMxOSwxNCBAQCBtYmltX3Bpbl9zdGF0ZV9yZXF1ZXN0
KHZvaWQpCj4gICAJcmV0dXJuIG1iaW1fc2VuZF9jb21tYW5kX21zZygpOwo+ICAgfQo+ICAgCj4g
K3N0YXRpYyBpbnQKPiArbWJpbV9ob21lX3Byb3ZpZGVyX3JlcXVlc3Qodm9pZCkKPiArewo+ICsJ
bWJpbV9zZXR1cF9jb21tYW5kX21zZyhiYXNpY19jb25uZWN0LCBNQklNX01FU1NBR0VfQ09NTUFO
RF9UWVBFX1FVRVJZLCBNQklNX0NJRF9CQVNJQ19DT05ORUNUX0hPTUVfUFJPVklERVIsIDApOwo+
ICsKPiArCXJldHVybiBtYmltX3NlbmRfY29tbWFuZF9tc2coKTsKPiArfQo+ICsKPiAgIHN0YXRp
YyBpbnQKPiAgIG1iaW1fcmVnaXN0cmF0aW9uX3JlcXVlc3Qodm9pZCkKPiAgIHsKPiBAQCAtNDc4
LDYgKzUxMSw3IEBAIHN0YXRpYyBzdHJ1Y3QgbWJpbV9oYW5kbGVyIGhhbmRsZXJzW10gPSB7Cj4g
ICAJeyAiY2FwcyIsIDAsIG1iaW1fZGV2aWNlX2NhcHNfcmVxdWVzdCwgbWJpbV9kZXZpY2VfY2Fw
c19yZXNwb25zZSB9LAo+ICAgCXsgInBpbnN0YXRlIiwgMCwgbWJpbV9waW5fc3RhdGVfcmVxdWVz
dCwgbWJpbV9waW5fc3RhdGVfcmVzcG9uc2UgfSwKPiAgIAl7ICJ1bmxvY2siLCAxLCBtYmltX3Bp
bl91bmxvY2tfcmVxdWVzdCwgbWJpbV9waW5fc3RhdGVfcmVzcG9uc2UgfSwKPiArCXsgImhvbWUi
LCAwLCBtYmltX2hvbWVfcHJvdmlkZXJfcmVxdWVzdCwgbWJpbV9ob21lX3Byb3ZpZGVyX3Jlc3Bv
bnNlIH0sCj4gICAJeyAicmVnaXN0cmF0aW9uIiwgMCwgbWJpbV9yZWdpc3RyYXRpb25fcmVxdWVz
dCwgbWJpbV9yZWdpc3RyYXRpb25fcmVzcG9uc2UgfSwKPiAgIAl7ICJzdWJzY3JpYmVyIiwgMCwg
bWJpbV9zdWJzY3JpYmVyX3JlcXVlc3QsIG1iaW1fc3Vic2NyaWJlcl9yZXNwb25zZSB9LAo+ICAg
CXsgImF0dGFjaCIsIDAsIG1iaW1fYXR0YWNoX3JlcXVlc3QsIG1iaW1fYXR0YWNoX3Jlc3BvbnNl
IH0sCj4gQEAgLTQ5MSw3ICs1MjUsNyBAQCBzdGF0aWMgc3RydWN0IG1iaW1faGFuZGxlciBoYW5k
bGVyc1tdID0gewo+ICAgc3RhdGljIGludAo+ICAgdXNhZ2Uodm9pZCkKPiAgIHsKPiAtCWZwcmlu
dGYoc3RkZXJyLCAiVXNhZ2U6IHVtYmltIDxjYXBzfHBpbnN0YXRlfHVubG9ja3xyZWdpc3RyYXRp
b258c3Vic2NyaWJlcnxhdHRhY2h8ZGV0YWNofGNvbm5lY3R8ZGlzY29ubmVjdHxjb25maWd8cmFk
aW8+IFtvcHRpb25zXVxuIgo+ICsJZnByaW50ZihzdGRlcnIsICJVc2FnZTogdW1iaW0gPGNhcHN8
cGluc3RhdGV8dW5sb2NrfGhvbWV8cmVnaXN0cmF0aW9ufHN1YnNjcmliZXJ8YXR0YWNofGRldGFj
aHxjb25uZWN0fGRpc2Nvbm5lY3R8Y29uZmlnfHJhZGlvPiBbb3B0aW9uc11cbiIKPiAgIAkJIk9w
dGlvbnM6XG4iCj4gICAjaWZkZWYgTElCUU1JX01CSU1fUFJPWFkKPiAgIAkJIiAgICAtcAkJCXVz
ZSBtYmltLXByb3h5XG4iCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9w
ZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVu
d3J0LWRldmVsCg==
