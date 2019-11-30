Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D8510DF56
	for <lists+openwrt-devel@lfdr.de>; Sat, 30 Nov 2019 22:12:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H3LCC3yHg34sHSAiAo1lQeGOu9VrkM5YqiQGF+9U+F4=; b=YPGtf3lX1VGGjl
	pVfA9fmiFC2hlx5V4kIVBmNNOgEovbL6gLWBykPPLM26tmGwzi2S2bYXuqP5n8QFTKXCd4d4DkyTT
	x1TMcMV6h5x6yp2ooXaF7FXih2bByclxxHtb8+kx3q7Y/YjP5FuLojB9TlYsz3bvTX5NVTmlkhN4r
	9ElAWzxVNaLLjz2zx2+3U9NKXZYlzd+w4EAjNZmquKMyU1mwwRyoHvgIifnvpEs6KspLYjTFo4S0R
	HhZq91iKhnihXiA4rVkLUwQISGyamAXitNqT4qLZjiai7bt1VratSc7SVUCZtWZ/YA9wINz1TQMob
	LyA9YurCfiUqcVBSGGbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibA24-0007lj-RH; Sat, 30 Nov 2019 21:12:00 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibA1v-0007lQ-QK
 for openwrt-devel@lists.openwrt.org; Sat, 30 Nov 2019 21:11:53 +0000
Received: by mail-ot1-x343.google.com with SMTP id r27so13140761otc.8
 for <openwrt-devel@lists.openwrt.org>; Sat, 30 Nov 2019 13:11:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=OZb0KV9CME1jEJKdLmC46qs3/SqyGi0VWOaU48xLRrM=;
 b=XswBgDjFTsFU64RGR3bx90Wfi5Xs7PcxIZ6gDsORdjR11FpD78QqBsYtnfoeTn4qZx
 emq0pd9SsnKEYf2gilkOB6sfrYWJ+Qo245NDfMX6B1iVIa0uOga3sFIcoXlpnPnEsMPJ
 sfSUvupVnOnV4WtRuz5iwBipig+dLX1B6s/mWQB/1gOeKGrsRPwedIRzFefkPYXpLxmn
 IsI9FXFpGlv/ap4egkY3tlmx5MCUbP+NbDqLNy3CSX1rYiYv0ckDwUX3RiZxabxDtqaR
 0NTMaKVR59tEgpB6eBCDPp7QXOw3yMVsMpLlaIGs6kxqC6e9zAdRzQYCLaSzdANm7CyQ
 heSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=OZb0KV9CME1jEJKdLmC46qs3/SqyGi0VWOaU48xLRrM=;
 b=PunPiSzNwxU1TocjCAFPhKyHjjDZsDsUFHHsCXrOd7G7J6GYxcAfpbB6l03ACA3kPo
 pLHvzsNg/mz6GfMKque4wjK2o8TF/alihFnW34cZ07/mbXOdajZsyQw3kNde8pBpJphg
 vlQUEzMaFaTS+g6uhjR5g330ORBj2oIsVYvYpfDUEP9Bl65fmd3xbKRQjcGtYvI3JH+G
 cFafLzoEQJWcIZoyzx3Bm+0TaBGPZd/ZDH+pxOx/x0gCj9sLbgHQZCKHK6sx9Hwu/1j8
 Af93hzdU45s5FbTHA8jmlkJg3woAccwSTgmA6MoPiehipuQwXWT1qnCaHV/Bo9VZ3jv6
 qsog==
X-Gm-Message-State: APjAAAXqpfVxPNWZsyZ0GiuTwoWFP9A9dIy4ZAtALdjKb7pBtEYryVuF
 uL8PBZlqjyw9dFD6I/ouMNxN3lpCKsQTt6HK5wlNxETD
X-Google-Smtp-Source: APXvYqyHbnBsfNlbC1EXYY8iGNBP1Z3f4y8zoOxIMX6y7snG3ZcZU5oGCgjnodG0eWPSJ0yoGHTWoX5amKI+/iA2LM4=
X-Received: by 2002:a05:6830:1da:: with SMTP id
 r26mr16180106ota.186.1575148308945; 
 Sat, 30 Nov 2019 13:11:48 -0800 (PST)
MIME-Version: 1.0
References: <20191130140440.GG61235@meh.true.cz>
 <20191130154148.GH61235@meh.true.cz>
In-Reply-To: <20191130154148.GH61235@meh.true.cz>
From: Rosen Penev <rosenp@gmail.com>
Date: Sat, 30 Nov 2019 13:11:37 -0800
Message-ID: <CAKxU2N-p72=iDd08NLC+2u4T3A=etAWnAGPwFsQZAF5Fhtaypg@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_131151_876750_1E884485 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] default compiler hardening options for all C
 projects [Was: Re: [PATCH] uci: Fix Wformat-nonliteral warning]
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

T24gU2F0LCBOb3YgMzAsIDIwMTkgYXQgNzo0MSBBTSBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVl
LmN6PiB3cm90ZToKPgo+IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+IFsyMDE5LTExLTMw
IDE1OjA0OjQwXToKPgo+ID4gV291bGRuJ3QgaXQgbWFrZSBzZW5zZSB0byBlbmFibGUgZm9sbG93
aW5nIGhhcmRlbmluZyBmbGFncyAobWF5YmUgY29uc2lkZXIKPiA+IG90aGVycyBhcyB3ZWxsPyk6
Cj4gPgo+ID4gICAtV2Vycm9yPWZvcm1hdC1zZWN1cml0eQo+ID4gICAtV2Vycm9yPWZvcm1hdC1u
b25saXRlcmFsCj4KPiBGWUksIGZvbGxvd2luZyB1Y2kgcGF0Y2g6Cj4KPiAgZGlmZiAtLWdpdCBh
L0NNYWtlTGlzdHMudHh0IGIvQ01ha2VMaXN0cy50eHQKPiAgaW5kZXggOTJhZGY0YTQ3MTIxLi41
NmExNGUyYjJiNDAgMTAwNjQ0Cj4gIC0tLSBhL0NNYWtlTGlzdHMudHh0Cj4gICsrKyBiL0NNYWtl
TGlzdHMudHh0Cj4gIEBAIC00LDcgKzQsNyBAQCBQUk9KRUNUKHVjaSBDKQo+Cj4gICBTRVQoQ01B
S0VfU0hBUkVEX0xJQlJBUllfTElOS19DX0ZMQUdTICIiKQo+ICAgQUREX0RFRklOSVRJT05TKC1P
cyAtV2FsbCAtV2Vycm9yIC1XZXh0cmEgLS1zdGQ9Z251OTkgLWczIC1JLgo+ICAtRFVDSV9QUkVG
SVg9IiR7Q01BS0VfSU5TVEFMTF9QUkVGSVh9IikKPiAgLUFERF9ERUZJTklUSU9OUygtV25vLXVu
dXNlZC1wYXJhbWV0ZXIpCj4gICtBRERfREVGSU5JVElPTlMoLVduby11bnVzZWQtcGFyYW1ldGVy
IC1XZXJyb3I9Zm9ybWF0LW5vbmxpdGVyYWwgLVdlcnJvcj1mb3JtYXQtc2VjdXJpdHkpCj4KPiB5
aWVsZHMgZm9sbG93aW5nIGVycm9yIHdpdGggY2xhbmctMTAgb24gQ0lbMV06Cj4KPiAgY2xpLmM6
MTk2OjE5OiBlcnJvcjogZm9ybWF0IHN0cmluZyBpcyBub3QgYSBzdHJpbmcgbGl0ZXJhbCBbLVdl
cnJvciwtV2Zvcm1hdC1ub25saXRlcmFsXQo+ICAgICAgICAgIHZmcHJpbnRmKHN0ZGVyciwgZm10
LCBhcCk7CkFjdHVhbGx5IGZvciB0aGF0IHNwZWNpZmljIG9uZSBJIHRoaW5rIF9fYXR0cmlidXRl
X18oKGZvcm1hdChwcmludGYsCjEsIDIpKSkgZm9yIHRoZSBmdW5jdGlvbiB3aWxsIGZpeCBpdC4K
Pgo+IDEuIGh0dHBzOi8vZ2l0bGFiLmNvbS95bmV6ei9vcGVud3J0LXVjaS8tL2pvYnMvMzY1NjE3
MjkzCj4KPiAtLSB5bmV6egoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5v
cGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAo=
