Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD57719E457
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 Apr 2020 11:51:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:In-Reply-To:To:
	References:Date:Mime-Version:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HKC99pBSiMuGLFzp5u2vlLBFEJq96zEai4OfrPJtNTI=; b=GO8R1LvyZhq8Or
	Pj/Bgqnio6TwJd3t6GvFV9nm/ONJg9+qBnsb2kZm1DP4cYDngxI/enuewYpR/v0Hdvsv3X6JD+Z53
	YRIXSQQouQw51GwA1+edSKxTW8RgHSVlC+PfZWTmMEpLSOLY9+MsoV+PPGcuDxafbM4FfaAzsnZkt
	JVJk3hNz4E7dWXRsEpx2xvPTIaee3n+YV2BcZ66tx2r+g4bpwYyS0r7TiS+Ndq/U2RnLb3EXpsJGR
	PdSjHwCVClwo2DHar4aREwt18Y8b1quTYPaVCesjy9vD2SdbNskua+/RBhmxYbfRvBqhDQlF1V4/n
	AO3rUCK+G1oas0s7P17g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKfSj-0008IR-PP; Sat, 04 Apr 2020 09:51:37 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKfSd-0008Hw-Bu
 for openwrt-devel@lists.openwrt.org; Sat, 04 Apr 2020 09:51:33 +0000
Received: from chuck.tardis.lan (tardis.herebedragons.eu [171.22.3.161])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id 6DAD6600B1
 for <openwrt-devel@lists.openwrt.org>; Sat,  4 Apr 2020 11:51:28 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 6DAD6600B1
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1585993888; bh=bvR0Sh/Q9BkhXEfBayzNmEskYDxQGRTL2FgBUBwVPr8=;
 h=From:Subject:Date:References:To:In-Reply-To:From;
 b=NavIjDSmsFFfog6t8HKX0Uw9NDad7RW3JJdNOizkklGvyvE21CARHogJTT1+8LBmo
 yIFTqxsw9fm+cqfgcBzKsqVbWXaJnt4UBcxgNsSSxxGK0nJEh3f80y0c7zJXGsACh5
 +wFJQe3J5VjD5UnGxjV/XS+aywVyCphrJ/rHJfo8=
From: Thibaut <hacks@slashdirt.org>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.14\))
Date: Sat, 4 Apr 2020 11:51:27 +0200
References: <20200318093526.45096-1-hacks@slashdirt.org>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
In-Reply-To: <20200318093526.45096-1-hacks@slashdirt.org>
Message-Id: <B16983AA-09DD-4CBF-8A8B-360D6AB9B0CA@slashdirt.org>
X-Mailer: Apple Mail (2.3445.104.14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_025131_704260_43712F8C 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: improve mikrotik-caldata.sh
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

SGksCgpDYW4gc29tZW9uZSB0ZWxsIG1lIHdoYXQgKGlmIGFueXRoaW5nKSBpcyB3cm9uZyB3aXRo
IHRoaXMgc2ltcGxlIHBhdGNoPwoKSXQgb25seSBhZmZlY3RzIHRoZSBhdGg3OS9taWtyb3RpayBz
dWJ0YXJnZXQgKHNvIHR3byBkZXZpY2VzIHRvIGRhdGUpIGFuZCBkb2VzIG9ubHkgdGhyZWUgdGhp
bmdzOgoKMSkgcnVuIG9ubHkgaWYgbmVjZXNzYXJ5ICh0aGUgY2hlY2sgaXMgYXJndWFibHkgcmVk
dW5kYW50IHdpdGggdGhlIG9uZSBhbHJlYWR5IHBlcmZvcm1lZCBpbiBnZW5lcmljIGNhbGRhdGEu
c2ggYnV0IEkgdGhvdWdodCBpdCBjb3VsZG7igJl0IGh1cnQgdG8gYWRkIGl0IGhlcmUgaW4gY2Fz
ZSB0aGUgc2NyaXB0IGlzIHVzZWQgaW5kZXBlbmRlbnRseSkKMikgdXNlIC90bXAgaW5zdGVhZCBv
ZiBmbGFzaCB0byB3cml0ZSB0aGUgdGVtcG9yYXJ5IGZpbGUKMykgcmVtb3ZlIHRoZSB0ZW1wb3Jh
cnkgZmlsZSBhZnRlciB1c2UKClRoYW5rcywKVGhpYmF1dAoKPiBMZSAxOCBtYXJzIDIwMjAgw6Ag
MTA6MzUsIFRoaWJhdXQgVkFSw4hORSA8aGFja3NAc2xhc2hkaXJ0Lm9yZz4gYSDDqWNyaXQgOgo+
IAo+IFJlZHVjZSB1bm5lY2Vzc2FyeSBmbGFzaCB3ZWFyIGFuZCBiZSB0aWR5Ogo+IC0gUnVuIHRo
ZSBleHRyYWN0aW9uIG9ubHkgaWYgbmVjZXNzYXJ5Cj4gLSBFeHRyYWN0IHRlbXBvcmFyeSBmaWxl
IHRvIC90bXAKPiAtIGNsZWFudXAgYWZ0ZXIgZXhlY3V0aW9uCj4gCj4gVGVzdGVkLWJ5OiBSb2dl
ciBQdWV5byBDZW50ZWxsZXMgPHJvZ2VyLnB1ZXlvQGd1aWZpLm5ldD4KPiBTaWduZWQtb2ZmLWJ5
OiBUaGliYXV0IFZBUsOITkUgPGhhY2tzQHNsYXNoZGlydC5vcmc+Cj4gLS0tCj4gLi4uL2F0aDc5
L21pa3JvdGlrL2Jhc2UtZmlsZXMvbGliL2Z1bmN0aW9ucy9taWtyb3Rpay1jYWxkYXRhLnNoICB8
IDkgKysrKysrKy0tCj4gMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2F0aDc5L21pa3JvdGlrL2Jhc2Ut
ZmlsZXMvbGliL2Z1bmN0aW9ucy9taWtyb3Rpay1jYWxkYXRhLnNoIGIvdGFyZ2V0L2xpbnV4L2F0
aDc5L21pa3JvdGlrL2Jhc2UtZmlsZXMvbGliL2Z1bmN0aW9ucy9taWtyb3Rpay1jYWxkYXRhLnNo
Cj4gaW5kZXggOWM0MDE2ZWU1ZC4uNzFhMWJmMDJmMyAxMDA2NDQKPiAtLS0gYS90YXJnZXQvbGlu
dXgvYXRoNzkvbWlrcm90aWsvYmFzZS1maWxlcy9saWIvZnVuY3Rpb25zL21pa3JvdGlrLWNhbGRh
dGEuc2gKPiArKysgYi90YXJnZXQvbGludXgvYXRoNzkvbWlrcm90aWsvYmFzZS1maWxlcy9saWIv
ZnVuY3Rpb25zL21pa3JvdGlrLWNhbGRhdGEuc2gKPiBAQCAtOSwxMyArOSwxOCBAQCBtaWtyb3Rp
a19jYWxkYXRhX2V4dHJhY3QoKSB7Cj4gCWxvY2FsIG9mZnNldD0kKCgkMikpCj4gCWxvY2FsIGNv
dW50PSQoKCQzKSkKPiAJbG9jYWwgbXRkCj4gLQlsb2NhbCBlcmRmaWxlPSIvbGliL2Zpcm13YXJl
L2VyZC5iaW4iCj4gKwlsb2NhbCBlcmRmaWxlPSIvdG1wL2VyZC5iaW4iCj4gKwlsb2NhbCBmd2Zp
bGU9Ii9saWIvZmlybXdhcmUvJHtGSVJNV0FSRX0iCj4gKwo+ICsJWyAtZSAkZndmaWxlIF0gJiYg
ZXhpdCAwCj4gCj4gCW10ZD0kKGZpbmRfbXRkX2NoYXJkZXYgJHBhcnQpCj4gCVsgLW4gIiRtdGQi
IF0gfHwgY2FsZGF0YV9kaWUgIm5vIG10ZCBkZXZpY2UgZm91bmQgZm9yIHBhcnRpdGlvbiAkcGFy
dCIKPiAKPiAJcmJleHRyYWN0IC1lICRtdGQgJGVyZGZpbGUKPiAKPiAtCWRkIGlmPSRlcmRmaWxl
IG9mPS9saWIvZmlybXdhcmUvJEZJUk1XQVJFIGlmbGFnPXNraXBfYnl0ZXMgYnM9JGNvdW50IHNr
aXA9JG9mZnNldCBjb3VudD0xIDI+L2Rldi9udWxsIHx8IFwKPiArCWRkIGlmPSRlcmRmaWxlIG9m
PSRmd2ZpbGUgaWZsYWc9c2tpcF9ieXRlcyBicz0kY291bnQgc2tpcD0kb2Zmc2V0IGNvdW50PTEg
Mj4vZGV2L251bGwgfHwgXAo+IAkJY2FsZGF0YV9kaWUgImZhaWxlZCB0byBleHRyYWN0IGNhbGli
cmF0aW9uIGRhdGEgZnJvbSAkbXRkIgo+ICsKPiArCXJtIC1mICRlcmRmaWxlCj4gfQo+IC0tIAo+
IDIuMTEuMAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwK
