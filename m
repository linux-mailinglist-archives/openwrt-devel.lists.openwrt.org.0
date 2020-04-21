Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3761B319E
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Apr 2020 23:15:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=opzPGbz1VIVgwf7/JwmLGHMaAGP+ccCI5fFSu41rjhU=; b=mXOnyDMrVuo5zz
	PJjNmKWafbOhIlbochjdfJutlAVnA10+jb3bBKECGyRn3wsHMdF0yf5i06B58s2psTNjTRvBVVNuB
	qNzy+GwoPVK4oS/PyTbCHTld9iKovWlfBglr9oMZklw1e2udCE36rlTbUBdnvzg5u+2lVGYov0k7h
	Dzy6nCkrbgmoOOGjGfP9Dbo45mGTMWoN0BrU61QZ1/tS8BQl4od10A6PK8HyXPgBO4U+l81zmxpd2
	FQxLurCzDlVSwLHvFDakQFBFnWe3euvcumA57Cqyo2OnGbD5Ayii4kP9RhGKRfHnohXLPmoGLeJkD
	P6bOsElBQWDxkS+OsI/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR0Eh-0005xI-OS; Tue, 21 Apr 2020 21:15:19 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR0EY-0003xV-1K
 for openwrt-devel@lists.openwrt.org; Tue, 21 Apr 2020 21:15:12 +0000
Received: from chuck.tardis.lan (tardis.herebedragons.eu [171.22.3.161])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id 46ECC600A8;
 Tue, 21 Apr 2020 23:15:02 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 46ECC600A8
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1587503702; bh=DxvvDBFuZIJTW77I0w+ZVq2oKtDiLqQuSRph4Y+efaM=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=dunNWkMe8AHoa4FF9VhNgpo/r2fk+l01Lwjo1GwYVOAJsMZZPfXJdqMvEPneTTL5/
 jDQri/uTcBkHstaa+RDejn42CULj89BemEZGl1EvAuNO5EcZpnmU+ZNPxGPcvyDYZ5
 lL/IRx7MWzt5F3hGddX1HHYvz5GL2cugtuFSutwY=
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.14\))
From: Thibaut <hacks@slashdirt.org>
In-Reply-To: <D70892B4-02A9-4BFC-BBDD-5805BB5DFC2D@redfish-solutions.com>
Date: Tue, 21 Apr 2020 23:15:01 +0200
Message-Id: <8C916A74-9D54-4B87-A209-C4E038EB9538@slashdirt.org>
References: <20200420133503.18700-1-hacks@slashdirt.org>
 <20200420133503.18700-12-hacks@slashdirt.org>
 <016c01d6171d$48f0f650$dad2e2f0$@adrianschmutzler.de>
 <D70892B4-02A9-4BFC-BBDD-5805BB5DFC2D@redfish-solutions.com>
To: Philip Prindeville <philipp_subx@redfish-solutions.com>
X-Mailer: Apple Mail (2.3445.104.14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_141510_582305_568E57DE 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH v2 11/14] package/base-files: caldata:
 allow setting target file
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
Cc: openwrt-devel@lists.openwrt.org, mail@adrianschmutzler.de,
 koen.vandeputte@ncentric.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Rml4ZWQuCgo+IExlIDIxIGF2ci4gMjAyMCDDoCAyMDoyNCwgUGhpbGlwIFByaW5kZXZpbGxlIDxw
aGlsaXBwX3N1YnhAcmVkZmlzaC1zb2x1dGlvbnMuY29tPiBhIMOpY3JpdCA6Cj4gCj4gQWdyZWVk
LCBlc3BlY2lhbGx5IGlmIHlvdeKAmXJlIHVzaW5nIOKAnHNldCAtZeKAnSBmb3IgZGVidWdnaW5n
4oCmCj4gCj4gCj4+IE9uIEFwciAyMCwgMjAyMCwgYXQgODowOSBBTSwgbWFpbEBhZHJpYW5zY2ht
dXR6bGVyLmRlIHdyb3RlOgo+PiAKPj4gQWNrZWQtYnk6IEFkcmlhbiBTY2htdXR6bGVyIDxmcmVp
ZnVua0BhZHJpYW5zY2htdXR6bGVyLmRlPgo+PiAKPj4gSSBwZXJzb25hbGx5IHByZWZlcgo+PiBb
IC1uICIkdmFyIiBdIHx8IGRvIHNvbWV0aGluZwo+PiB0bwo+PiBbIC16ICIkdmFyIiBdICYmIGRv
IHNvbWV0aGluZwo+PiBidXQgdGhhdCdzIHB1cmUgbWF0dGVyIG9mIHRhc3RlIGFnYWluLgo+PiAK
Pj4gQmVzdAo+PiAKPj4gQWRyaWFuCj4+IAo+Pj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0K
Pj4+IEZyb206IG9wZW53cnQtZGV2ZWwgW21haWx0bzpvcGVud3J0LWRldmVsLWJvdW5jZXNAbGlz
dHMub3BlbndydC5vcmddCj4+PiBPbiBCZWhhbGYgT2YgVGhpYmF1dCBWQVLDiE5FCj4+PiBTZW50
OiBNb250YWcsIDIwLiBBcHJpbCAyMDIwIDE1OjM1Cj4+PiBUbzogb3BlbndydC1kZXZlbEBsaXN0
cy5vcGVud3J0Lm9yZwo+Pj4gQ2M6IFRoaWJhdXQgVkFSw4hORSA8aGFja3NAc2xhc2hkaXJ0Lm9y
Zz47IGtvZW4udmFuZGVwdXR0ZUBuY2VudHJpYy5jb20KPj4+IFN1YmplY3Q6IFtPcGVuV3J0LURl
dmVsXSBbUEFUQ0ggdjIgMTEvMTRdIHBhY2thZ2UvYmFzZS1maWxlczogY2FsZGF0YToKPj4+IGFs
bG93IHNldHRpbmcgdGFyZ2V0IGZpbGUKPj4+IAo+Pj4gVGhpcyB3aWxsIGVuYWJsZSBwbGF0Zm9y
bXMgdG8gZXh0cmFjdCBjYWxkYXRhIHRvIGFuIGFyYml0cmFyeSBmaWxlLCBvciBwYXRjaCBtYWMK
Pj4+IGluIGFuIGFiaXRyYXJ5IGZpbGUuCj4+PiAKPj4+IFNpZ25lZC1vZmYtYnk6IFRoaWJhdXQg
VkFSw4hORSA8aGFja3NAc2xhc2hkaXJ0Lm9yZz4KPj4+IC0tLQo+Pj4gcGFja2FnZS9iYXNlLWZp
bGVzL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICB8ICAyICstCj4+PiBwYWNrYWdlL2Jh
c2UtZmlsZXMvZmlsZXMvbGliL2Z1bmN0aW9ucy9jYWxkYXRhLnNoIHwgMjkgKysrKysrKysrKysr
KysrKy0tCj4+PiAtLS0tLQo+Pj4gMiBmaWxlcyBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCA5
IGRlbGV0aW9ucygtKQo+Pj4gCj4+PiBkaWZmIC0tZ2l0IGEvcGFja2FnZS9iYXNlLWZpbGVzL01h
a2VmaWxlIGIvcGFja2FnZS9iYXNlLWZpbGVzL01ha2VmaWxlIGluZGV4Cj4+PiAxNTZlN2JjOGI5
Li5mMWYwZjE3YTYwIDEwMDY0NAo+Pj4gLS0tIGEvcGFja2FnZS9iYXNlLWZpbGVzL01ha2VmaWxl
Cj4+PiArKysgYi9wYWNrYWdlL2Jhc2UtZmlsZXMvTWFrZWZpbGUKPj4+IEBAIC0xMiw3ICsxMiw3
IEBAIGluY2x1ZGUgJChJTkNMVURFX0RJUikvdmVyc2lvbi5tayAgaW5jbHVkZQo+Pj4gJChJTkNM
VURFX0RJUikvZmVlZHMubWsKPj4+IAo+Pj4gUEtHX05BTUU6PWJhc2UtZmlsZXMKPj4+IC1QS0df
UkVMRUFTRTo9MjE4Cj4+PiArUEtHX1JFTEVBU0U6PTIxOQo+Pj4gUEtHX0ZMQUdTOj1ub25zaGFy
ZWQKPj4+IAo+Pj4gUEtHX0ZJTEVfREVQRU5EUzo9JChQTEFURk9STV9ESVIpLwo+Pj4gJChHRU5F
UklDX1BMQVRGT1JNX0RJUikvYmFzZS1maWxlcy8KPj4+IGRpZmYgLS1naXQgYS9wYWNrYWdlL2Jh
c2UtZmlsZXMvZmlsZXMvbGliL2Z1bmN0aW9ucy9jYWxkYXRhLnNoIGIvcGFja2FnZS9iYXNlLQo+
Pj4gZmlsZXMvZmlsZXMvbGliL2Z1bmN0aW9ucy9jYWxkYXRhLnNoCj4+PiBpbmRleCAzYmRiMWU0
ZGQ1Li5lOTM0OWM3ZWVlIDEwMDY0NAo+Pj4gLS0tIGEvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVz
L2xpYi9mdW5jdGlvbnMvY2FsZGF0YS5zaAo+Pj4gKysrIGIvcGFja2FnZS9iYXNlLWZpbGVzL2Zp
bGVzL2xpYi9mdW5jdGlvbnMvY2FsZGF0YS5zaAo+Pj4gQEAgLTYwLDE1ICs2MCwyMSBAQCBjYWxk
YXRhX2Zyb21fZmlsZSgpIHsKPj4+IAlsb2NhbCBzb3VyY2U9JDEKPj4+IAlsb2NhbCBvZmZzZXQ9
JCgoJDIpKQo+Pj4gCWxvY2FsIGNvdW50PSQoKCQzKSkKPj4+ICsJbG9jYWwgdGFyZ2V0PSQ0Cj4+
PiAKPj4+IC0JZGQgaWY9JHNvdXJjZSBvZj0vbGliL2Zpcm13YXJlLyRGSVJNV0FSRSBpZmxhZz1z
a2lwX2J5dGVzCj4+PiBicz0kY291bnQgc2tpcD0kb2Zmc2V0IGNvdW50PTEgMj4vZGV2L251bGwg
fHwgXAo+Pj4gKwlbIC16ICIkdGFyZ2V0IiBdICYmIHRhcmdldD0vbGliL2Zpcm13YXJlLyRGSVJN
V0FSRQo+Pj4gKwo+Pj4gKwlkZCBpZj0kc291cmNlIG9mPSR0YXJnZXQgaWZsYWc9c2tpcF9ieXRl
cyBicz0kY291bnQgc2tpcD0kb2Zmc2V0Cj4+PiArY291bnQ9MSAyPi9kZXYvbnVsbCB8fCBcCj4+
PiAJCWNhbGRhdGFfZGllICJmYWlsZWQgdG8gZXh0cmFjdCBjYWxpYnJhdGlvbiBkYXRhIGZyb20g
JHNvdXJjZSIKPj4+IH0KPj4+IAo+Pj4gY2FsZGF0YV92YWxpZCgpIHsKPj4+IAlsb2NhbCBleHBl
Y3RlZD0iJDEiCj4+PiArCWxvY2FsIHRhcmdldD0kMgo+Pj4gKwo+Pj4gKwlbIC16ICIkdGFyZ2V0
IiBdICYmIHRhcmdldD0vbGliL2Zpcm13YXJlLyRGSVJNV0FSRQo+Pj4gCj4+PiAtCW1hZ2ljPSQo
aGV4ZHVtcCAtdiAtbiAyIC1lICcxLzEgIiUwMngiJyAvbGliL2Zpcm13YXJlLyRGSVJNV0FSRSkK
Pj4+ICsJbWFnaWM9JChoZXhkdW1wIC12IC1uIDIgLWUgJzEvMSAiJTAyeCInICR0YXJnZXQpCj4+
PiAJWyAiJG1hZ2ljIiA9ICIkZXhwZWN0ZWQiIF0KPj4+IAlyZXR1cm4gJD8KPj4+IH0KPj4+IEBA
IC03Nyw2ICs4Myw3IEBAIGNhbGRhdGFfcGF0Y2hfY2hrc3VtKCkgewo+Pj4gCWxvY2FsIG1hYz0k
MQo+Pj4gCWxvY2FsIG1hY19vZmZzZXQ9JCgoJDIpKQo+Pj4gCWxvY2FsIGNoa3N1bV9vZmZzZXQ9
JCgoJDMpKQo+Pj4gKwlsb2NhbCB0YXJnZXQ9JDQKPj4+IAlsb2NhbCB4b3JfbWFjCj4+PiAJbG9j
YWwgeG9yX2Z3X21hYwo+Pj4gCWxvY2FsIHhvcl9md19jaGtzdW0KPj4+IEBAIC05MSwzOCArOTgs
NDQgQEAgY2FsZGF0YV9wYXRjaF9jaGtzdW0oKSB7Cj4+PiAJeG9yX2Z3X2Noa3N1bT0kKHhvciAk
eG9yX2Z3X2Noa3N1bSAkeG9yX2Z3X21hYyAkeG9yX21hYykKPj4+IAo+Pj4gCXByaW50ZiAiJWIi
ICJceCR7eG9yX2Z3X2Noa3N1bTowOjJ9XHgke3hvcl9md19jaGtzdW06MjoyfSIgfCBcCj4+PiAt
CQlkZCBvZj0vbGliL2Zpcm13YXJlLyRGSVJNV0FSRSBjb252PW5vdHJ1bmMgYnM9MQo+Pj4gc2Vl
az0kY2hrc3VtX29mZnNldCBjb3VudD0yCj4+PiArCQlkZCBvZj0kdGFyZ2V0IGNvbnY9bm90cnVu
YyBicz0xIHNlZWs9JGNoa3N1bV9vZmZzZXQKPj4+IGNvdW50PTIKPj4+IH0KPj4+IAo+Pj4gY2Fs
ZGF0YV9wYXRjaF9tYWMoKSB7Cj4+PiAJbG9jYWwgbWFjPSQxCj4+PiAJbG9jYWwgbWFjX29mZnNl
dD0kKCgkMikpCj4+PiAJbG9jYWwgY2hrc3VtX29mZnNldD0kMwo+Pj4gKwlsb2NhbCB0YXJnZXQ9
JDQKPj4+IAo+Pj4gCVsgLXogIiRtYWMiIC1vIC16ICIkbWFjX29mZnNldCIgXSAmJiByZXR1cm4K
Pj4+IAo+Pj4gLQlbIC1uICIkY2hrc3VtX29mZnNldCIgXSAmJiBjYWxkYXRhX3BhdGNoX2Noa3N1
bSAiJG1hYyIKPj4+ICIkbWFjX29mZnNldCIgIiRjaGtzdW1fb2Zmc2V0Igo+Pj4gKwlbIC16ICIk
dGFyZ2V0IiBdICYmIHRhcmdldD0vbGliL2Zpcm13YXJlLyRGSVJNV0FSRQo+Pj4gKwo+Pj4gKwlb
IC1uICIkY2hrc3VtX29mZnNldCIgXSAmJiBjYWxkYXRhX3BhdGNoX2Noa3N1bSAiJG1hYyIKPj4+
ICIkbWFjX29mZnNldCIgIiRjaGtzdW1fb2Zmc2V0IiAiJHRhcmdldCIKPj4+IAo+Pj4gLQltYWNh
ZGRyXzJiaW4gJG1hYyB8IGRkIG9mPS9saWIvZmlybXdhcmUvJEZJUk1XQVJFCj4+PiBjb252PW5v
dHJ1bmMgb2ZsYWc9c2Vla19ieXRlcyBicz02IHNlZWs9JG1hY19vZmZzZXQgY291bnQ9MSB8fCBc
Cj4+PiArCW1hY2FkZHJfMmJpbiAkbWFjIHwgZGQgb2Y9JHRhcmdldCBjb252PW5vdHJ1bmMgb2Zs
YWc9c2Vla19ieXRlcwo+Pj4gYnM9Ngo+Pj4gK3NlZWs9JG1hY19vZmZzZXQgY291bnQ9MSB8fCBc
Cj4+PiAJCWNhbGRhdGFfZGllICJmYWlsZWQgdG8gd3JpdGUgTUFDIGFkZHJlc3MgdG8gZWVwcm9t
IGZpbGUiCj4+PiB9Cj4+PiAKPj4+IGF0aDlrX3BhdGNoX21hYygpIHsKPj4+IAlsb2NhbCBtYWM9
JDEKPj4+ICsJbG9jYWwgdGFyZ2V0PSQyCj4+PiAKPj4+IC0JY2FsZGF0YV9wYXRjaF9tYWMgIiRt
YWMiIDB4Mgo+Pj4gKwljYWxkYXRhX3BhdGNoX21hYyAiJG1hYyIgMHgyICIiICIkdGFyZ2V0Igo+
Pj4gfQo+Pj4gCj4+PiBhdGg5a19wYXRjaF9tYWNfY3JjKCkgewo+Pj4gCWxvY2FsIG1hYz0kMQo+
Pj4gCWxvY2FsIG1hY19vZmZzZXQ9JDIKPj4+IAlsb2NhbCBjaGtzdW1fb2Zmc2V0PSQoKG1hY19v
ZmZzZXQgLSAxMCkpCj4+PiArCWxvY2FsIHRhcmdldD0kNAo+Pj4gCj4+PiAtCWNhbGRhdGFfcGF0
Y2hfbWFjICIkbWFjIiAiJG1hY19vZmZzZXQiICIkY2hrc3VtX29mZnNldCIKPj4+ICsJY2FsZGF0
YV9wYXRjaF9tYWMgIiRtYWMiICIkbWFjX29mZnNldCIgIiRjaGtzdW1fb2Zmc2V0Igo+Pj4gIiR0
YXJnZXQiCj4+PiB9Cj4+PiAKPj4+IGF0aDEwa19wYXRjaF9tYWMoKSB7Cj4+PiAJbG9jYWwgbWFj
PSQxCj4+PiArCWxvY2FsIHRhcmdldD0kMgo+Pj4gCj4+PiAtCWNhbGRhdGFfcGF0Y2hfbWFjICIk
bWFjIiAweDYgMHgyCj4+PiArCWNhbGRhdGFfcGF0Y2hfbWFjICIkbWFjIiAweDYgMHgyICIkdGFy
Z2V0Igo+Pj4gfQo+Pj4gLS0KPj4+IDIuMTEuMAo+Pj4gCj4+PiAKPj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBvcGVud3J0LWRldmVsIG1haWxp
bmcgbGlzdAo+Pj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+Pj4gaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKPj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKPj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+PiBodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo+IAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
