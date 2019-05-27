Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0F02BA79
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 21:04:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HINffDM0kuZZ5QAhtF4l6AleYCGZg9Auw2YqJ6jK9Zg=; b=ozKOAa8Qer7rGI
	oeW6+HmEjW3MQ5ainBWjMV0BGf0u/vdEOnZEpT1U5jnS9FePdZrl/YCqQy76xiXxoPmtCbLDdFWUS
	fEOTGj2/WnzxtZ3k3QAbW+diLGKKb8mS8hs+sOqxl+WmPJ5D6WPIfe2TzHMM0YvltRlRjftbAewnH
	zdnQKtPOdnaZT2biKmpR1JAegovYk7/VdMnf/AtwOJipXGpC5PHkhi6ycq1r+JNxxQEgIdlDhBiE7
	APgHl1sZsru0CDmhqjF0Y2G11MC8jiLSaAsCr1L9yv+e7RkxK/1O+CtV2FGiL7IilmDyRzc5Bb7/3
	+un/uJibGeNrybSb2+Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVKuS-0003Ix-H0; Mon, 27 May 2019 19:03:48 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVKuL-0003Ia-KO
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 19:03:43 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id DD9BCA60E49; Mon, 27 May 2019 12:03:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dodson.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.2
Received: from husum (husum.ptp [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id ACF41A60DC1;
 Mon, 27 May 2019 12:03:38 -0700 (PDT)
From: Russell Senior <russell@personaltelco.net>
To: Denis =?utf-8?Q?Peri=C5=A1a?= <darkman.hr@gmail.com>
References: <CAC8mBSVP+Uev=H_x4actCT9g+FV1X0bVFZ=06biyBA=w-s6AkA@mail.gmail.com>
 <f30df01f-ea9d-32ae-2e7d-286fa4aab164@ironai.com>
 <CAC8mBSUYMvuwJaAftwYCL+TaYTaDs_4VT2P9Q3-j5sDOF6xO6Q@mail.gmail.com>
Date: Mon, 27 May 2019 12:03:38 -0700
In-Reply-To: <CAC8mBSUYMvuwJaAftwYCL+TaYTaDs_4VT2P9Q3-j5sDOF6xO6Q@mail.gmail.com>
 ("Denis \=\?utf-8\?Q\?Peri\=C5\=A1a\=22's\?\= message of "Mon,
 27 May 2019 16:03:33 +0200")
Message-ID: <87imtvu3cl.fsf@husum.klickitat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_120341_706041_8EFE13C3 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] dnsmasq not leasing after a while. Sometimes
 more than 5 times a day
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
Cc: Vincent Wiemann <vincent.wiemann@ironai.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Pj4+Pj4gIkRlbmlzIiA9PSBEZW5pcyBQZXJpxaFhIDxkYXJrbWFuLmhyQGdtYWlsLmNvbT4gd3Jp
dGVzOgoKRGVuaXM+IFllcywgZG5zbWFzcSBpcyBzdGlsbCBydW5uaW5nIGJ1dCBsZWFzZSBpcyBu
b3QgZ2l2ZW4uLiBJIGRvbid0CkRlbmlzPiBrbm93IGhvdyB0byBkZWJ1ZyBpdCBtb3JlLiAgQ29u
ZmlndXJhdGlvbiBpcyBzaW1wbGUsIG9uZSBzdWJuZXQKRGVuaXM+IHJhbmdlIDE5Mi4xNjguMC4x
MCB0byAxOTIuMTY4LjAuMjAwIG9uIHdsYW4wIGludGVyZmFjZSBmb3IKRGVuaXM+IGV4YW1wbGUu
IEJ1dCBpdCdzIG5vdCB3aWZpIGlzc3VlLCBsb2NhbCBhbHNvLiAgSXQgc2VuZHMgbWFpbCBhcwpE
ZW5pcz4gc29vbiBhcyBlcnJvciBpcyBkZXRlY3RlZCBhbmQgcmVzdGFydHMgZG5zbWFzcSBhZnRl
ciB3aGljaCBpdApEZW5pcz4gd29ya3MuIERldmljZSBpcyBub3QgcmVib290aW5nLiAgT3Blbldy
dCAxOC4wNi1TTkFQU0hPVCwKRGVuaXM+IHI3NzY2LWU5YTczNDQ1NTAKCkRlbmlzPiBBbHNvIG15
IHNjcmlwdHMgY2hlY2tlcyB0d28gdGltZXMganVzdCB0byBydWxlIG91dCBmYWxzZQpEZW5pcz4g
bmVnYXRpdmUuICBBbHNvLCBtb3JlIHB1YmxpYyBleHBvc3VyZSBvciBub25lIGlzIHByZXR0eSBt
dWNoCkRlbmlzPiBzYW1lLi4gSSBoYXZlIGRldmljZSB3aGljaCBnZXRzIG1heWJlIDEtMiBwZXJz
b24gYW5kIG9uZSB3aXRoIDUwCkRlbmlzPiAuLiBiZWhhdmluZyBzYW1lLiBBZnRlciBhIHdoaWxl
IGl0IHN0b3BzIHJlc3BvbmRpbmcuIEFueSBtb3JlCkRlbmlzPiBkZWJ1ZyBJIGNvdWxkIHVzZSBz
b21ld2hlcmU/CgpUaGVyZSBtYXkgYmUgYW5vdGhlciBkaGNwIHNlcnZlciBkZXRlY3RlZCBvbiB0
aGUgbmV0d29yay4gU2VlICJmb3JjZSIKb3B0aW9uIGhlcmU6CgogIGh0dHBzOi8vb3BlbndydC5v
cmcvZG9jcy9ndWlkZS11c2VyL2Jhc2Utc3lzdGVtL2RoY3AjZGhjcF9wb29scwoKQW5kL29yIHBv
c3QgdGhlIGNvbnRlbnRzIG9mIC92YXIvZXRjL2Ruc21hc3EuY29uZi5jZmcqCgoKLS0gClJ1c3Nl
bGwgU2VuaW9yLCBQcmVzaWRlbnQKcnVzc2VsbEBwZXJzb25hbHRlbGNvLm5ldAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
