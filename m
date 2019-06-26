Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEAE65676B
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Jun 2019 13:16:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nDxNRrpo6/L/oCymko956LUQjPjK5sg9N52i9krX39I=; b=Ja8cX14WgRuIuy
	IHLfIAoP2E0L2zee0piB73fC1b4I95rPrOb4C8vQBnhMb61XEoJXZMh+KHBn+FTKFV/lpiTDs40OQ
	sX+YlzJ9LMLrIoH34lEuiIhO//4N9dh01F3CIsxO+kPpPLcen/21cy55be361WwZGp8DODxidwp64
	xvej1A3mqrAc9tkSbltx+IollgwEX0AdMQrxp5R5g/ApO/nKAnaSh4xtbMeYfEgJBEIzo0D73rP8B
	frVfSkLU3xGqVy/Ro+rTFLjYe/2wokjLV8HTJJx9xXRc9BFFKW8lcdXfvW+02RZX9kNpxfqONd84u
	TU7L63OabLlJzeCBUrvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg5uS-0007Dm-Lw; Wed, 26 Jun 2019 11:16:16 +0000
Received: from [2a01:4f8:fff0:2d:8::142] (helo=smtp.soverin.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg5uK-0007DD-Av
 for openwrt-devel@lists.openwrt.org; Wed, 26 Jun 2019 11:16:11 +0000
Received: from soverin.net by soverin.net
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=oranjevos.nl;
 s=default; t=1561547761;
 bh=D1+ZJLmF0vmvQLkP7QsEhusGKKvV+GRpx3ETq0UOoyE=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=qzmbTdsr5Pw7qbKuEctDjWKxF7+3VOlr/F+9qgczbvk5I87Dz//KkbSKQSOPRblkM
 +8KPjoqbJPYqfR7Hzmiemgn6oPAscDbrmzKg0hMhZ5w3SK2KngOs5dikxYHOmMlGb4
 B3cY5RTJXizbekeLf8b87rZ61pZ+gj7ITjBTnx34=
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Paul Oranje <por@oranjevos.nl>
In-Reply-To: <877e9820ic.fsf@miraculix.mork.no>
Date: Wed, 26 Jun 2019 13:16:00 +0200
Message-Id: <F0C0570E-7AF4-4C65-AFAC-FA7B6B02D47A@oranjevos.nl>
References: <20a0263e-aba2-20f0-2850-63ee0ea0dcac@wwsnet.net>
 <65e023e0-4927-45f3-1dee-d649ab2b4fd8@wwsnet.net>
 <168b7d66-a94e-2425-00da-9ee7a6cc8e61@wwsnet.net>
 <3ba98caf-8fb1-6d7c-c192-9d8bfb84c395@wwsnet.net>
 <877e9820ic.fsf@miraculix.mork.no>
X-Virus-Scanned: clamav-milter 0.100.3 at c03mi01
X-Virus-Status: Clean
To: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_041608_691321_07D7CE88 
X-CRM114-Status: UNSURE (   5.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: Re: [OpenWrt-Devel] Problem with "base" release repositories
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Cgo+IE9wIDI2IGp1bi4gMjAxOSwgb20gMTA6NTAgaGVlZnQgQmrDuHJuIE1vcmsgPGJqb3JuQG1v
cmsubm8+IGhldCB2b2xnZW5kZSBnZXNjaHJldmVuOgo+IAo+IEpvLVBoaWxpcHAgV2ljaCA8am9A
bWVpbi5pbz4gd3JpdGVzOgo+IAo+PiB0aGUgYmFzZSByZXBvc2l0b3JpZXMgaGF2ZSBiZWVuIGZ1
bGx5IHJlc3RvcmVkIGFuZCBzaG91bGQgYmUgc2FmZSB0byB1c2UKPj4gYWdhaW4uCj4gCj4gVGhh
bmsgeW91IGZvciBib3RoIGZhc3QgcmVzb2x1dGlvbiBhbmQgdGhlIGNvbnRpbm91cyBpbmZvIHVw
ZGF0ZXMuCj4gVGhhdCdzIHByZXR0eSBpbXByZXNzaXZlLCBhbmQgSSBqdXN0IGhhdmUgdG8gd29u
ZGVyIGhvdyBtdWNoIHNsZWVwIHlvdQo+IGdvdCBsYXN0IG5pZ2h0IDotKQo+IAo+IElNSE8sIHRo
aXMgd2FzIGEgZGVtb25zdHJhdGlvbiBvZiBwcm9mZXNzaW9uYWwgaXNzdWUgaGFuZGxpbmcgd2l0
aCB2ZXJ5Cj4gbGltaXRlZCByZXNvdXJjZXMuICBPcGVuV3J0IGlzIG9idmlvdXNseSBpbiBnb29k
IGhhbmRzIHRoZXNlIGRheXMuCj4gCj4gQSBiaWcgdGhhbmtzIHRvIHlvdSBhbGwhCj4gCj4gCj4g
Cj4gCj4gQmrDuHJuCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGlu
Zm8vb3BlbndydC1kZXZlbAoKQWJzb2x1dGVseSB0cnVlLgpTbywgZGVlcGVzdCByZXNwZWN0IGZy
b20gbWUgYXMgd2VsbC4KUGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9v
cGVud3J0LWRldmVsCg==
