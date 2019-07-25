Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4242675351
	for <lists+openwrt-devel@lfdr.de>; Thu, 25 Jul 2019 17:58:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0qTQPig9s+eNZGvuytj9rpFGTNReL1jaX2BdpA5TVUU=; b=AVp10fpzlZl3rA+Eic5xlfilU
	6MtQZlrdRF7y4KswDFd/jMkZuR9a8cuOyGDg63MVUgKVsxE5Yo7lyY7yGa5VXRLDA2aaNi5W0UFhO
	KA5rGETfGzCk6PyWj7ZJPFPsodEBMoEASe9Q3burCO3fYRB+AldKwka2WRVzMXDNx2BDmO4FfGpI8
	UfatvGlknZgvOa+1C2l9YgIMH3GKJqzo0jZEzkUac4fRKwEAHNVuqiTSvhPqJQPOVLCdwf3/hjvRw
	w4pvCpbYHOkPuwcgkq9SCO6QbvcxEF9eCY+LvhK3iwEV1kCWuKtAqa9wcnMzQAyyS3OQQrKCCur06
	vltBk2gdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqg8T-0000SU-82; Thu, 25 Jul 2019 15:58:29 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqg8I-0000Rq-4O
 for openwrt-devel@lists.openwrt.org; Thu, 25 Jul 2019 15:58:19 +0000
Received: from p5dcfbf8d.dip0.t-ipconnect.de ([93.207.191.141]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1hqg8E-0000GG-10; Thu, 25 Jul 2019 17:58:14 +0200
To: Zefir Kurtisi <zefir.kurtisi@neratec.com>, openwrt-devel@lists.openwrt.org
References: <20190725154315.7777-1-zefir.kurtisi@neratec.com>
From: John Crispin <john@phrozen.org>
Message-ID: <ab518b29-1b91-4002-dbf3-54eea50b429a@phrozen.org>
Date: Thu, 25 Jul 2019 17:58:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190725154315.7777-1-zefir.kurtisi@neratec.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_085818_330729_6055FCCE 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] logread: add option to filter for
 facilities
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

Ck9uIDI1LzA3LzIwMTkgMTc6NDMsIFplZmlyIEt1cnRpc2kgd3JvdGU6Cj4gVGhpcyBhZGRzIGZp
bHRlcmluZyBvcHRpb25zIGZvciBmYWNpbGl0aWVzIGFzIGZvbGxvd3M6Cj4gICAgICAtegk8ZmFj
aWxpdHk+CWhhbmRsZSBvbmx5IG1lc3NhZ2VzIHdpdGggZ2l2ZW4gZmFjaWxpdHkgKDAtMjMpLCBy
ZXBlYXRhYmxlCj4gICAgICAtWgk8ZmFjaWxpdHk+CWlnbm9yZSBtZXNzYWdlcyB3aXRoIGdpdmVu
IGZhY2lsaXR5ICgwLTIzKSwgcmVwZWF0YWJsZQo+Cj4gV2l0aCB0aGF0Cj4gKiAnbG9ncmVhZCAt
eiAyIC16IDE2JyB3aWxsIGRpc3BsYXkgYWxsIE1BSUwgYW5kIExPQ0FMMCBtZXNzYWdlcywgd2hp
bGUKPiAqICdsb2dyZWFkIC1aIDIgLVogMTYnIHdpbGwgZGlzcGxheSBhbGwgYnV0IE1BSUwgYW5k
IExPQ0FMMCBtZXNzYWdlcwo+Cj4gU2lnbmVkLW9mZi1ieTogWmVmaXIgS3VydGlzaSA8emVmaXIu
a3VydGlzaUBuZXJhdGVjLmNvbT4KPiAtLS0KPiAgIGxvZy9sb2dyZWFkLmMgfCAyOSArKysrKysr
KysrKysrKysrKysrKysrKysrKystLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDI3IGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvbG9nL2xvZ3JlYWQuYyBiL2xvZy9s
b2dyZWFkLmMKPiBpbmRleCBlNDc1NDFhLi5hNzY0NzQyIDEwMDY0NAo+IC0tLSBhL2xvZy9sb2dy
ZWFkLmMKPiArKysgYi9sb2cvbG9ncmVhZC5jCj4gQEAgLTY2LDYgKzY2LDE4IEBAIHN0YXRpYyBp
bnQgbG9nX3R5cGUgPSBMT0dfU1RET1VUOwo+ICAgc3RhdGljIGludCBsb2dfc2l6ZSwgbG9nX3Vk
cCwgbG9nX2ZvbGxvdywgbG9nX3RyYWlsZXJfbnVsbCA9IDA7Cj4gICBzdGF0aWMgaW50IGxvZ190
aW1lc3RhbXA7Cj4gICBzdGF0aWMgaW50IGxvZ2RfY29ubl90cmllcyA9IExPR0RfQ09OTkVDVF9S
RVRSWTsKPiArc3RhdGljIGludCBmYWNpbGl0eV9pbmNsdWRlOwo+ICtzdGF0aWMgaW50IGZhY2ls
aXR5X2V4Y2x1ZGU7Cj4gKwo+ICsvKiBjaGVjayBmb3IgZmFjaWxpdHkgZmlsdGVyOyByZXR1cm4g
MCBpZiBtZXNzYWdlIHNoYWxsIGJlIGRyb3BwZWQgKi8KPiArc3RhdGljIGludCBjaGVja19mYWNp
bGl0eV9maWx0ZXIoaW50IGYpCj4gK3sKPiArCWlmIChmYWNpbGl0eV9pbmNsdWRlKQo+ICsJCXJl
dHVybiAhIShmYWNpbGl0eV9pbmNsdWRlICYgKDEgPDwgZikpOwo+ICsJaWYgKGZhY2lsaXR5X2V4
Y2x1ZGUpCj4gKwkJcmV0dXJuICEoZmFjaWxpdHlfZXhjbHVkZSAmICgxIDw8IGYpKTsKPiArCXJl
dHVybiAxOwo+ICt9Cgpjb3JyZWN0IG1lIGlmIEkgYW0gd3JvbmcgYnV0IGJ5IGRlZmF1bHQgYWxs
IGZhY2lsaXRpZXMgd2lsbCBiZSBpbmNsdWRlZCAKc28gdGhlIC16IGlzIGEgbm9vcCB1bmxlc3Mg
d2UgYWRkIGEKCmlmIChmYWNpbGl0eV9pbmNsdWRlKQoKIMKgwqDCoCByZXRydW4gMAoKYXQgdGhl
IGVuZCBvZiB0aGlzIGZ1bmN0aW9uID8hCgogwqDCoMKgIEpvaG4KCgo+ICAgCj4gICBzdGF0aWMg
Y29uc3QgY2hhciogZ2V0Y29kZXRleHQoaW50IHZhbHVlLCBDT0RFICpjb2RldGFibGUpIHsKPiAg
IAlDT0RFICppOwo+IEBAIC0xMzMsNiArMTQ1LDEwIEBAIHN0YXRpYyBpbnQgbG9nX25vdGlmeShz
dHJ1Y3QgYmxvYl9hdHRyICptc2cpCj4gICAJCQlleGl0KC0xKTsKPiAgIAkJfQo+ICAgCX0KPiAr
CXAgPSBibG9ibXNnX2dldF91MzIodGJbTE9HX1BSSU9dKTsKPiArCj4gKwlpZiAoIWNoZWNrX2Zh
Y2lsaXR5X2ZpbHRlcihMT0dfRkFDKHApKSkKPiArCQkJcmV0dXJuIDA7Cj4gICAKPiAgIAltID0g
YmxvYm1zZ19nZXRfc3RyaW5nKHRiW0xPR19NU0ddKTsKPiAgIAlpZiAocmVnZXhwX3BhdHRlcm4g
JiYKPiBAQCAtMTQ1LDcgKzE2MSw2IEBAIHN0YXRpYyBpbnQgbG9nX25vdGlmeShzdHJ1Y3QgYmxv
Yl9hdHRyICptc2cpCj4gICAJCQkJKHVuc2lnbmVkIGxvbmcpdCwgdF9tcyk7Cj4gICAJfQo+ICAg
CWMgPSBjdGltZSgmdCk7Cj4gLQlwID0gYmxvYm1zZ19nZXRfdTMyKHRiW0xPR19QUklPXSk7Cj4g
ICAJY1tzdHJsZW4oYykgLSAxXSA9ICdcMCc7Cj4gICAKPiAgIAlpZiAobG9nX3R5cGUgPT0gTE9H
X05FVCkgewo+IEBAIC0yMTIsNiArMjI3LDggQEAgc3RhdGljIGludCB1c2FnZShjb25zdCBjaGFy
ICpwcm9nKQo+ICAgCQkiICAgIC1wCTxmaWxlPgkJUElEIGZpbGVcbiIKPiAgIAkJIiAgICAtaAk8
aG9zdG5hbWU+CUFkZCBob3N0bmFtZSB0byB0aGUgbWVzc2FnZVxuIgo+ICAgCQkiICAgIC1QCTxw
cmVmaXg+CVByZWZpeCBjdXN0b20gdGV4dCB0byBzdHJlYW1lZCBtZXNzYWdlc1xuIgo+ICsJCSIg
ICAgLXoJPGZhY2lsaXR5PgloYW5kbGUgb25seSBtZXNzYWdlcyB3aXRoIGdpdmVuIGZhY2lsaXR5
ICgwLTIzKSwgcmVwZWF0YWJsZVxuIgo+ICsJCSIgICAgLVoJPGZhY2lsaXR5PglpZ25vcmUgbWVz
c2FnZXMgd2l0aCBnaXZlbiBmYWNpbGl0eSAoMC0yMyksIHJlcGVhdGFibGVcbiIKPiAgIAkJIiAg
ICAtZgkJCUZvbGxvdyBsb2cgbWVzc2FnZXNcbiIKPiAgIAkJIiAgICAtdQkJCVVzZSBVRFAgYXMg
dGhlIHByb3RvY29sXG4iCj4gICAJCSIgICAgLXQJCQlBZGQgYW4gZXh0cmEgdGltZXN0YW1wXG4i
Cj4gQEAgLTI5MCw3ICszMDcsNyBAQCBpbnQgbWFpbihpbnQgYXJnYywgY2hhciAqKmFyZ3YpCj4g
ICAKPiAgIAlzaWduYWwoU0lHUElQRSwgU0lHX0lHTik7Cj4gICAKPiAtCXdoaWxlICgoY2ggPSBn
ZXRvcHQoYXJnYywgYXJndiwgInUwZmNzOmw6cjpGOnA6UzpQOmg6ZTp0IikpICE9IC0xKSB7Cj4g
Kwl3aGlsZSAoKGNoID0gZ2V0b3B0KGFyZ2MsIGFyZ3YsICJ1MGZjczpsOno6WjpyOkY6cDpTOlA6
aDplOnQiKSkgIT0gLTEpIHsKPiAgIAkJc3dpdGNoIChjaCkgewo+ICAgCQljYXNlICd1JzoKPiAg
IAkJCWxvZ191ZHAgPSAxOwo+IEBAIC0zMjAsNiArMzM3LDE0IEBAIGludCBtYWluKGludCBhcmdj
LCBjaGFyICoqYXJndikKPiAgIAkJY2FzZSAnbCc6Cj4gICAJCQlsaW5lcyA9IGF0b2kob3B0YXJn
KTsKPiAgIAkJCWJyZWFrOwo+ICsJCWNhc2UgJ3onOgo+ICsJCQlpZCA9IHN0cnRvdWwob3B0YXJn
LCBOVUxMLCAwKSAmIDB4MWY7Cj4gKwkJCWZhY2lsaXR5X2luY2x1ZGUgfD0gKDEgPDwgaWQpOwo+
ICsJCQlicmVhazsKPiArCQljYXNlICdaJzoKPiArCQkJaWQgPSBzdHJ0b3VsKG9wdGFyZywgTlVM
TCwgMCkgJiAweDFmOwo+ICsJCQlmYWNpbGl0eV9leGNsdWRlIHw9ICgxIDw8IGlkKTsKPiArCQkJ
YnJlYWs7Cj4gICAJCWNhc2UgJ1MnOgo+ICAgCQkJbG9nX3NpemUgPSBhdG9pKG9wdGFyZyk7Cj4g
ICAJCQlpZiAobG9nX3NpemUgPCAxKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBs
aXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGlu
Zm8vb3BlbndydC1kZXZlbAo=
