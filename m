Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE0310C327
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 Nov 2019 05:13:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1OK7sga0oC5kxN7M45ROrIVz6+ZJWrMA57SLY5OmWVA=; b=Fwj/jIuooNZYcknXYajWEG1ne
	1Fmsr+4W7+wKX2wyhVezcJdaVoATVRBja5XD9X8J1WYX4Qu5+4N5kaHh/9BYkQdYd/sUdCvCDYKiY
	L+Lmpq5xDqs/fYPkWyRqOAbZSohDuW0rHPWJq7JBj5q/o9XHXMZyHESwx6SRJpqHdCMgKkXm1TJ2d
	U0RU0WFVqbioN78lVRkhtAaJNq1jG5YwtK48aJRmTKzUG9jWkBrRwZlGNonESJ5Guq2Ae4tsOvISD
	izcT6ROaSLarkJ3KmUhbAuM/D810XqjMi9CcQOiXKig/L0CNi0h9wWbTzkKwKSGdMGD4zEVLHbzYP
	zcxHcOlvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaBBA-00033k-4i; Thu, 28 Nov 2019 04:13:20 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaBB3-0002tt-K7
 for openwrt-devel@lists.openwrt.org; Thu, 28 Nov 2019 04:13:15 +0000
Received: by mail-wr1-x435.google.com with SMTP id g7so8645748wrw.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 27 Nov 2019 20:13:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=WWgvzGGFpWigvk1WIUK6suLVv1RNa21PMkIuTm9wUAU=;
 b=lfYidjJtFlr4f+3fPRkVcE/amwe7xdDdLhfDIFLRGWRmeNsbiuQQt72CPwc6qnAhNC
 //FFbu/Tr5Irq+stxsRdhVecqPxaNzAaf4A83beY6BecmG5BesjWfWoL93zgoCPaAWw4
 o4o1rqGoiIhhTG/MoYfntCorcOEen8F/XMjjQh6bu3d7Q2QJ37pAAQ+nRDN6h09vZ8J6
 ian75RpECVJo/U/dkVlMaSLjKy7KvQ6hV0An26tWiivWUmiqIIg953gWNcUYx7RvjXZg
 GCJTEW62zdjvMJV9g92wjokYE+uFj7YzLCItoDZYgjQq43VEFxR+iBdNm9yx6Tnp6tzM
 +uTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WWgvzGGFpWigvk1WIUK6suLVv1RNa21PMkIuTm9wUAU=;
 b=L5Ja6SUOaGlDdGi7Ad7gPeq6UPmDgnb9nRJ+8CZx8i1yW5I1eikM5V2la7ZPxAVBMh
 D+iD0Ut9Idf5U7FGdAbkuwW/RPYMNkI99M69wStpVYYSWmKKHGLH91WCsIRngBEstYs2
 HgVpxl1Udl73bvcAE9l3MRcIlx9ghVhpw6ybMrkgpvKsddb43oz5MHCXd2pO0SZNl5ps
 Kzkj0joI9xT5FcWgZzDKXkrUY7YYyK6RYP2fRwKX5cg1l48L6mCwsJhclFxTHrXDOmAi
 9U8FwGexBPztPOVwSVaq76KYeW0m8crGgVGBJR8fnsXUZo0Luqealh1/fsmCMCPjxAZr
 /H8A==
X-Gm-Message-State: APjAAAUT6HRKhhWxd4BGSJ1jcXhSEZGzaIchLsa0QRL+NAqY8An8GMaL
 IRojPZgpN6wunxhUmpM/by+dSNSZ
X-Google-Smtp-Source: APXvYqxU1ymfFDY3b+tOXF+Q1HdBMgsFXzQevoMgjwb8OzwxyABh75IUp8CpglWEtVUSRySj4XPKKQ==
X-Received: by 2002:adf:fd45:: with SMTP id h5mr43826806wrs.388.1574914390690; 
 Wed, 27 Nov 2019 20:13:10 -0800 (PST)
Received: from mamamia.internal (a89-183-33-182.net-htp.de. [89.183.33.182])
 by smtp.gmail.com with ESMTPSA id k16sm9130744wru.0.2019.11.27.20.13.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 Nov 2019 20:13:10 -0800 (PST)
To: Rosen Penev <rosenp@gmail.com>
References: <20191125224418.266082-1-rosenp@gmail.com>
 <20191127104917.GB37269@meh.true.cz>
 <8b1128c5-b171-afa1-4bac-c8e0aa9a7ece@gmail.com>
 <20191127121948.GD37269@meh.true.cz>
 <161dbb27-826e-c066-1ddb-951e229e7adf@gmail.com>
 <CAKxU2N-Uj1YJ8XGvNcB961_ar8mdHHzxBvbqS4XEF18unQJYmw@mail.gmail.com>
From: Andre Heider <a.heider@gmail.com>
Message-ID: <ad6bd7cd-373f-4359-89fe-99fea9f2575f@gmail.com>
Date: Thu, 28 Nov 2019 05:13:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAKxU2N-Uj1YJ8XGvNcB961_ar8mdHHzxBvbqS4XEF18unQJYmw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_201313_688081_0834C394 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:435 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (a.heider[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCHv3] tools/pkg-config: Replace with pkgconf
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
Cc: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMjcvMTEvMjAxOSAyMzozMCwgUm9zZW4gUGVuZXYgd3JvdGU6Cj4gT24gV2VkLCBOb3YgMjcs
IDIwMTkgYXQgNjozNSBBTSBBbmRyZSBIZWlkZXIgPGEuaGVpZGVyQGdtYWlsLmNvbT4gd3JvdGU6
Cj4+Cj4+IE9uIDI3LzExLzIwMTkgMTM6MTksIFBldHIgxaB0ZXRpYXIgd3JvdGU6Cj4+PiBBbmRy
ZSBIZWlkZXIgPGEuaGVpZGVyQGdtYWlsLmNvbT4gWzIwMTktMTEtMjcgMTI6MjY6MzldOgo+Pj4K
Pj4+PiBJIGRpZG4ndCBwdXJzdWUgdXBzdHJlYW1pbmcgaXQgYmVjYXVzZSBpdCBsb29rcyBsaWtl
IG1lcmdlIHJlcXVlc3QgYXQgZ2l0aHViCj4+Pj4gYXJlIGlnbm9yZWQgYW5kIEkgZGlkbid0IGZl
ZWwgbGlrZSBzaWduaW5nIHVwIGF0IHVwc3RyZWFtcyBvd24gcGFnZS4KPj4+Cj4+PiAgICBnaXQg
c2VuZC1lbWFpbCAtLXRvICd+a2FuaWluaS9wa2djb25mQGxpc3RzLnNyLmh0JyB5b3VyLnBhdGNo
Cj4+Pgo+Pj4gZG9lc250IHdvcms/Cj4+Cj4+IE5vIGNsdWUsIGp1c3Qgc2VudCB0aGUgYXR0YWNo
ZWQgdmVyc2lvbiB0aGVyZS4KPj4KPj4gQFJvc2VuCj4+IFlvdSBtaWdodCB3YW5uYSB1c2UgdGhp
cyBwYXRjaCBpbnN0ZWFkLiBBbiBhbHRlcm5hdGl2ZSB3b3VsZCBiZSB0byBjYXRjaAo+PiAtLXZl
cnNpb24gaW4gdGhlIHdyYXBwZXIgYW5kIGRvbid0IGFkZCBhZGRpdGlvbmFsIGFyZ3VtZW50cyBp
biB0aGF0IGNhc2UuCj4gSSBub3RpY2VkIHlvdXIgcGF0Y2hlcyBoYXZlIENSTEYgbGluZSBlbmRp
bmdzLiBJIGNvbnZlcnRlZCB0byBMRiBpbgo+IHRoZSBzdWJtaXNzaW9uLgoKSG0sIEkgZG9uJ3Qg
dGhpbmsgSSBjb25maWd1cmVkIGl0IHRvIGJlIHRoYXQgd2VpcmQuCkJ1dCBjaGVja2luZyB0aGUg
YXJjaGl2ZSBpdCBsb29rcyBsaWtlIHVuaXggbGluZWJyZWFrcyB0byBtZTogCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL3BpcGVybWFpbC9vcGVud3J0LWRldmVsLzIwMTktTm92ZW1iZXIvMDIw
Mzg3Lmh0bWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwK
