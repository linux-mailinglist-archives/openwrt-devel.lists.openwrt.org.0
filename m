Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD0F6E1F2
	for <lists+openwrt-devel@lfdr.de>; Fri, 19 Jul 2019 09:52:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vp2LXOel9i6PIHe+84+jv4H1VYer0WBGhtUSnII9qfc=; b=PHBY+0LFJQgRz2
	6NrMTLYMmy7RE/YRHKOMn7BOCmv6EySbvyllt3n7xDoGFpNbkzyO43f3Z8OEerssGBP22DA9OjsNf
	M8s655QqSpvw5q2fBHw8pOFRc4PML1VfZ28ydiJq4WNt2bqwhxsLoZHHeb/v3VSa/EvERCoAsD3Y4
	A8lohhPJxB1drI24ZIYPkf+GV9h7i9gkSS1Cnf3FZkntkKjONeZKcoT7vvsyKXsxbVbGy7EmCu2xg
	w7udnbsOJcjlz6kYafDOmDaMxyHiyh0BRQsailP3Cahh3UfYf/LQW74KjOSAxXJ2thcWv0sY1rOJg
	Xavxxp2xGi7f7Xjmo+GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoNfi-0002hC-QD; Fri, 19 Jul 2019 07:51:19 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoNfX-0002gd-9O
 for openwrt-devel@lists.openwrt.org; Fri, 19 Jul 2019 07:51:08 +0000
Received: by mail-lj1-x243.google.com with SMTP id k18so29857907ljc.11
 for <openwrt-devel@lists.openwrt.org>; Fri, 19 Jul 2019 00:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=mohBWDANGk0uyZJN9/ISHOVtiQJYlq7hAgIoIkrvomY=;
 b=wrZLyzKxfny22QiuQ5vJKFZA+B+YuFqKMDJA6jp+u2q5uZezeZOiGJfHK8lT3Rl148
 NdVnHCnLIGQnhLI7gDCCnTx7JnDfOJXqjmItrQ7tHczCs8ECmQeDrPSmaiiZC7XX1CY8
 VJEzCCBY7M7IWCatcvJkDwxXlQPuiiKh13tuWblNGjWTDqHUbJ04OUVkRV4cj6Y3CwPj
 30z96K2eLtx4dCmOkov9HzF+N8Gfgz/hepgYMwMF9HaMiyvpqyk7OVn2599DU/XYFiHB
 xnukUYBwD5mHMq4thhE+ul3oqLCRrBBK2phtpCnk7UEwCeF78QkBXRSe79FnprQW81RT
 n9iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=mohBWDANGk0uyZJN9/ISHOVtiQJYlq7hAgIoIkrvomY=;
 b=bPnVdsxkX0jwEcE6mrfZHLvdE6UGoF12do0vjjIGE5SfxFMu/nOEQvClmV5n1sbi5H
 UIxf/dxHmJc+YM7fkFdyCixl4z/aOM65J0TCqnJPX8jsHciasUcja7oJFcVmMSSgIkoD
 +w1LMUfvwJs5858QqueN9ZXIGH7V5O0m8/65sqm6+yQsCu6l2reKkzxZYziqp5QJV1dF
 vbt0xy2T+bDbs6we6f0AE5IlKvyv34do1kk5Y4sXCxEbP5GSqYF3rkkLzTw1lwmKMh0R
 2EpqjxeYQNRVNZjc0kc3PK3sIvkkdCoLz4MgVAbZKUZMUvUjlbGm5VsI+Jfntb5x30aY
 ygNw==
X-Gm-Message-State: APjAAAX1gc8csoxhsDrUxLfd0/eZlAOZsBp4Q6nM0NT0xN5VPRu3H0mm
 8O0EDqsxGyXeVFLUGdNZ6z10tLbuKFIubvraXT+aTg==
X-Google-Smtp-Source: APXvYqyahlcsp2CotFVSFt7pUwIIYs0OS7+Z9whGRKnXkfbw1UZW6gmtvzkYjC6dS4Wsrc5Bi8ImHUuRvfCxEh1U3os=
X-Received: by 2002:a2e:781a:: with SMTP id t26mr26699173ljc.28.1563522664526; 
 Fri, 19 Jul 2019 00:51:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190714135037.18471-1-linus.walleij@linaro.org>
 <79ce4232-ea93-e9ee-a59d-b9b828b73be8@gmail.com>
 <CACRpkdazsAQ9guJUtqYdxnB-HjCY0jStZM=e5vGkfFVZbbLgjg@mail.gmail.com>
 <CACRpkdZTtpP5bxnpGOQPvLUwVYT69bp_-_E9dZLCoV3wKsu6ow@mail.gmail.com>
 <CAJN1KkyEE8NTBWY_+SVQg9sH60ZNxNKFDsZaQ7Mt88PQ+1H3Ow@mail.gmail.com>
In-Reply-To: <CAJN1KkyEE8NTBWY_+SVQg9sH60ZNxNKFDsZaQ7Mt88PQ+1H3Ow@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 19 Jul 2019 09:50:52 +0200
Message-ID: <CACRpkdbYzSPA9BcxThjL8NrHRoo07tdvVmaqLn4BQPw1Jfr=Yg@mail.gmail.com>
To: =?UTF-8?Q?Pawe=C5=82_Dembicki?= <paweldembicki@gmail.com>, 
 Vladimir Oltean <olteanv@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_005107_333584_8E624A71 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] gemini: Bring up DSA switches
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Christian Lamparter <chunkeey@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gRnJpLCBKdWwgMTksIDIwMTkgYXQgNjo0OSBBTSBQYXdlxYIgRGVtYmlja2kgPHBhd2VsZGVt
Ymlja2lAZ21haWwuY29tPiB3cm90ZToKCj4gSSB0aGluaywgdGhhdCB0aGUgYmVzdCBhcHByb2Fj
aCBpcyB2bGFuIGZpbHRlcmluZy4gSSBzdGFydGVkIHNvbWUgd29yazoKPiBodHRwczovL2dpdGh1
Yi5jb20vQ0hLRFNLODgvbGludXgvY29tbWl0LzM4YjYyNDgyZDlmODI4YjU3MjBkYjExMTQ1ZmE0
NzRlMzY4YjI0OGMKCkhleSEgSSB3YW50ZWQgdG8gZG8gdGhhdCBidXQgbmV2ZXIgaGFkIHRpbWUs
CiBzbyB2ZXJ5IGhhcHB5IHRoYXQgeW91J3JlIGZpeGluZyBpdCB1cCEgOikKCj4gQXQgdGhpcyBt
b21lbnQgaXQgd29ya3MgKEkgdXNlZCBpcC1mdWxsIGFuZCBpcC1icmlkZ2UgcGFja2V0cykuIEJ1
dCBJCj4gaGF2ZSBubyBpZGVhIGhvdyB0byBpbnRlZ3JhdGUgZHNhIHZsYW4gZmlsdGVyaW5nIHdp
dGggT3BlbldSVAo+IGNvbmZpZ3VyYXRpb24uCj4gVGhpcyBpcyBmaXJzdCBkc2Egc3dpdGNoIHdp
dGggRFNBX1RBR19QUk9UT19OT05FIGluIE9wZW5XUlQuCgpJIHRoaW5rIGluIHRoZSB1cHN0cmVh
bSBrZXJuZWwgbG9vayBhdApjb21taXQgZjliYmU0NDc3YzMwZWNlNDQyOTY0MzdlZTI2MTQyYjQy
ZWY4MDcwYgoibmV0OiBkc2E6IE9wdGlvbmFsIFZMQU4tYmFzZWQgcG9ydCBzZXBhcmF0aW9uIGZv
ciBzd2l0Y2hlcyB3aXRob3V0IHRhZ2dpbmciCmJ5IFZsYWRpbWlyIE9sdGVhbi4KCkkgaW50dWl0
aXZlbHkgdGhpbmsgdGhpcyBpcyB3aGF0IHdlIHdhbnQgdG8gZG8gaW4gdGhlIGVuZCBpcyB1c2UK
RFNBX1RBR19QUk9UT184MDIxUSBidXQgYWRtaXR0ZWRseSBJIGRvbid0IHRoaW5rIEkKdW5kZXJz
dGFuZCBWTEFOcyB3ZWxsIGVub3VnaCBmb3IgZW5hYmxpbmcgdGhpcy4KCkZvciBPcGVuV3J0IHVz
aW5nIGtlcm5lbCB2NC4xOSBJIGhhdmUgbm8gaWRlYSB3aGF0IHRoZSBiZXN0IHdvdWxkCmJlLiBJ
IGRvbid0IHRoaW5rIFZsYWRpbWlyJ3Mgd29yayBjYW4gYmUgZWFzaWx5IGJhY2twb3J0ZWQuCkkg
c3VwcG9zZSBzb21lIHNwZWNpYWwgaGFjayB0byBqdXN0IGJyaW5nIHVwIHRoZSBEU0Egd2l0aAph
IGN1c3RvbSBzY3JpcHQgaXMgdGhlIGJlc3QgY29tcHJvbWlzZSBmb3IgdGhlIHRpbWUgYmVpbmcu
CgpGWUkgdGhpcyBib2FyZCBzdXBwb3J0ZWQgYnkgT3BlbldydCBhbHNvIGhhcyB0aGlzIHN3aXRj
aDoKaHR0cHM6Ly9vcGVud3J0Lm9yZy90b2gvZXZhbHVhdGlvbi5ib2FyZHMvcGI0NAp3aXRoIGEg
Y3VzdG9tIGRyaXZlcjoKaHR0cHM6Ly9naXRodWIuY29tL29wZW53cnQvb3BlbndydC9ibG9iL21h
c3Rlci90YXJnZXQvbGludXgvYXI3MXh4L2ZpbGVzL2RyaXZlcnMvc3BpL3NwaS12c2M3Mzg1LmMK
SXQncyBhIE1JUFMgZGV2aWNlIHRob3VnaCwgYW5kIEkgZG9uJ3Qga25vdyBpZiBhbnlvbmUgaXMK
YWN0aXZlbHkgbWFpbnRhaW5pbmcgaXQgYW5kIGNvdWxkIHRlc3QgdG8gbWlncmF0ZSBpdCB0byB0
aGlzCm5ldyBkcml2ZXIgYW5kIGhlbHAgb3V0PwoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwg
bWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0
cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
