Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75451BB79F
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Sep 2019 17:12:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mdzud61jysTGmCeY48QgVy0lrUX866jnS0R/XuZ7spc=; b=LgY4IICd9SvniU
	xu9ih1S7h91hg/6lJswLnw27PvAsPuX+eKgzm3fmzBbmijCd5guJDE5ucX2AEQBN3XP7f+b+NeyXQ
	ZRQ15jqlq+C4gygvHuJCvvqNKmRffvEW2h/r7YiWEF9I7/qYj2apI1ns+PXghqE5nu+ISExA6W58f
	zT7+sWCiZ2GHV15n5DdzQGiB73lnByZWtx8G7MX7LYi11113ryhoX5a/mwFAmrni867VoB9BknboO
	pRW8BHvatP0VB+bgQCPb6cdr2cZrQaEZSMhRvEZNS6OGR4Nu20GHOjZDjO/LkK3OygGwE1yxi1vAz
	xbDiybkNTA7JnCDwMyiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCQ0q-0001m6-KJ; Mon, 23 Sep 2019 15:12:28 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCQ0Z-0001lb-GU
 for openwrt-devel@lists.openwrt.org; Mon, 23 Sep 2019 15:12:12 +0000
Received: by mail-io1-xd42.google.com with SMTP id c6so21098172ioo.13
 for <openwrt-devel@lists.openwrt.org>; Mon, 23 Sep 2019 08:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Nw3YU5zIDGOINWX5nwbeuI3GNvP0FMay0nYaPZ1IzJM=;
 b=rxj+iAPyj1VI+53Vs8mAo5IJS7CGryLac+Rt8+VOTsgrXHWA/oFCa90FFCAYGCkZh5
 k5Ria/ilfSUse2n8PDV9l1EEPMSaNWecQE4efgH8+sXgCevN4QK0dS1BL48GAjSWyhpQ
 VfUnwJ4/XJEFtETCdF7tGobx9bzviLTqFfi4DOv6m0kWutayEwET8Y6nSk2q2doQOYrb
 /3ECmEJjsyCMdSH3F85J5q1ZuzZWex7og/4BLlnPm/aNt5oiwrU5M8gEzWndyrvUc1BS
 04ot9na7Fi/m1+gziXZODSs9GTB9u8fDqHSwx76bL3JwRu+P8jfWJS1tuiWK58o/zxiS
 QFpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Nw3YU5zIDGOINWX5nwbeuI3GNvP0FMay0nYaPZ1IzJM=;
 b=racp2pDuwf0ZX2acgcyH9VgsZNEkMxeEVHw500n1NE+BKcU3GSszl/PsFMyA7ZpJKs
 P2enH7/L2/QLC0i4L4Ld9r1DaXPsieceIM2/SLvQR+fBNLFNSKR+kMR6/K4JA9ty4gFe
 PUmBeLzzZZ8uq0fXurKzQBI60vx01x2gRWnuZrBoKEuwRXtQ+VbC4hHzdlTsyweKHpmj
 fSwzP8KhDmp2AKalqUP9lpIr09uAM+4M1XqJ+eYSx0U/Z0HXD2T3s55cWca67klRXpSh
 JnfSuEng2h7MXkLDktlWy/rsEVZeh3Xu8JdaZoYYd53fb4PaN14pE9ftBj1yOFUGEcih
 95iA==
X-Gm-Message-State: APjAAAWnFWShiPwURYJ7sAwXjNOPlkB7XkEifSOW/rC+A1k1V8/ggUme
 m8Ed3BjDJual2AWO/moOkn5+viyNmKCgVL4irxPrSmisBJg=
X-Google-Smtp-Source: APXvYqzjquQ7p1CIuYKSJJkkAXdDVuW1Mir4UCTRGrmaDys+rZWeBnD0N31sf9mMDkd0EE+pap5/kxnaVNcDFRsPqJM=
X-Received: by 2002:a6b:5003:: with SMTP id e3mr12282121iob.208.1569251530139; 
 Mon, 23 Sep 2019 08:12:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190923133417.2546-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20190923133417.2546-1-freifunk@adrianschmutzler.de>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Mon, 23 Sep 2019 18:11:59 +0300
Message-ID: <CANoib0HyZMifB0+ig8aRCVhWB8=YWhKnm8K5=6jg_s8=gN_bvA@mail.gmail.com>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_081211_576038_01007CDA 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ipq40xx: remove redundant
 ucidef_set_interfaces_* in 02_network
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

0L/QvSwgMjMg0YHQtdC90YIuIDIwMTkg0LMuINCyIDE2OjM0LCBBZHJpYW4gU2NobXV0emxlciA8
ZnJlaWZ1bmtAYWRyaWFuc2NobXV0emxlci5kZT46Cj4KPiBJZiBhbHJlYWR5IGluY2x1ZGVkIGlu
IHVjaWRlZl9hZGRfc3dpdGNoLCB5b3UgZG8gbm90IGhhdmUgdG8KPiBhZGRpdGlvbmFsbHkgc2V0
IHRoZSBpbnRlcmZhY2UgbW9kZSBpbiB1Y2lkZWZfc2V0X2ludGVyZmFjZXNfKgo+IGZ1bmN0aW9u
cy4KPgo+IFRoaXMgcGF0Y2ggcmVtb3Zlcy9hZGp1c3RzIHN1Y2ggcmVkdW5kYW50IGNhc2VzLgo+
Cj4gU2lnbmVkLW9mZi1ieTogQWRyaWFuIFNjaG11dHpsZXIgPGZyZWlmdW5rQGFkcmlhbnNjaG11
dHpsZXIuZGU+Cj4KPiAtLS0KPgo+IFRoaXMgaXMgbm90IHRlc3RlZCBvbiB0aGUgYWZmZWN0ZWQg
ZGV2aWNlcy4KPgo+IEhvd2V2ZXIsIHRoZSBzYW1lIGFwcHJvYWNoIGlzIHRha2VuIGZvciBvdGhl
ciB0YXJnZXRzLCBhbmQKPiBuZXR3b3JrIHNldHVwIGlzIGVzc2VudGlhbGx5IGRldmljZS1pbmRl
cGVuZGVudCBjb25jZXJuaW5nIHRoZQo+IGNoYW5nZXMgZG9uZSBoZXJlLgo+IC0tLQo+ICB0YXJn
ZXQvbGludXgvaXBxNDB4eC9iYXNlLWZpbGVzL2V0Yy9ib2FyZC5kLzAyX25ldHdvcmsgfCA3ICsr
Ky0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkK
Pgo+IGRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvaXBxNDB4eC9iYXNlLWZpbGVzL2V0Yy9ib2Fy
ZC5kLzAyX25ldHdvcmsgYi90YXJnZXQvbGludXgvaXBxNDB4eC9iYXNlLWZpbGVzL2V0Yy9ib2Fy
ZC5kLzAyX25ldHdvcmsKPiBpbmRleCBlNWJhNzI2MGYzLi5iNzYzMWEzMDFjIDEwMDc1NQo+IC0t
LSBhL3RhcmdldC9saW51eC9pcHE0MHh4L2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDJfbmV0d29y
awo+ICsrKyBiL3RhcmdldC9saW51eC9pcHE0MHh4L2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDJf
bmV0d29yawo+IEBAIC0yNCwxNCArMjQsMTQgQEAgaXBxNDB4eF9zZXR1cF9pbnRlcmZhY2VzKCkK
PiAgICAgICAgICAgICAgICAgOzsKPiAgICAgICAgIGFzdXMscnQtYWM1OHV8XAo+ICAgICAgICAg
enl4ZWwsbmJnNjYxNykKPiAtICAgICAgICAgICAgICAgdWNpZGVmX3NldF9pbnRlcmZhY2VzX2xh
bl93YW4gImV0aDAiICJldGgxIgo+ICsgICAgICAgICAgICAgICB1Y2lkZWZfc2V0X2ludGVyZmFj
ZV93YW4gImV0aDEiCj4gICAgICAgICAgICAgICAgIHVjaWRlZl9hZGRfc3dpdGNoICJzd2l0Y2gw
IiBcCj4gICAgICAgICAgICAgICAgICAgICAgICAgIjB1QGV0aDAiICIxOmxhbjo0IiAiMjpsYW46
MyIgIjM6bGFuOjIiICI0OmxhbjoxIgo+ICAgICAgICAgICAgICAgICA7OwoKSSBwbGFubmVkIHRv
IGludmVzdGlnYXRlIHRoaXMsIGJ1dCBkaWRuJ3QgZmluZCB0aW1lIHlldC4gVGhlIGNvbmZpZwpp
bml0aWFsbHkgaXMgd3JvbmcuCkZvciAgYXN1cyxydC1hYzU4dXxcCj4gICAgICAgICB6eXhlbCxu
Ymc2NjE3KQoKVGhlcmUgc2hvdWxkIGJlIHBvcnQgNSBvbiB2aWQgMiBmb3IgZXRoIDEgdG8gZW5h
YmxlIHZsYW4gd29ya2luZy4KQ3VycmVudGx5IHNhdmluZyBhbnkgY29uZmlnIGluIGx1Y2kgYnJl
YWtzIHZsYW5zLCBiZWNhdXNlIHBvcnQgNSBpc24ndApkZWZpbmVkIGhlcmUuIFRoZSBwb3J0IDUg
aXMgcmVtb3ZlZC4KSSBzdWdnZXN0IGxvIGxlYXZlIHRoaXMgYWxvbmUgZm9yIGEgd2hpbGUuIEkg
YW0gZ29pbmcgdG8gZmluZCBzb21lCmtpbmQgb2YgYSBzb2x1bHRpb24gYW5kIHN1Z2dlc3QgaXQu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
