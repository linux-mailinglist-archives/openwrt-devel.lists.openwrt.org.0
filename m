Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF86D136A70
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Jan 2020 11:03:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h7K1pGnQRwLgKkrhNiDefilmc/5UmJDyBlUTuHLjA90=; b=OYvBealN7xtLUt
	PGCtkx4he3Y9XuOhBaXlW+TZOLnqT6oPmTN4zku928PQTZu2moa8FhNWjeXu1t96fTaavdKwOelxY
	PZmpOQhFKiby0BGEEA53IqKm+VbdhRoRYNFRjsIWttu6h18jiNz4MF3vrvvLGt+aBd1dFIzt3IzVB
	CZiMUXsqZzixViJuJQe+PPbMFXTPsBrn9wHgx2o3MoSBgqC3xHDB4yPJnIwXgiqdoC9LQFFWZ2T6R
	ut5IFz5WB5PIWV1IayrGYnmxZSN7Y2Ar40PH0Cx9BmH708H6sbfhXGRMMNXV7OnAgEyNCs+scAW6H
	H/EeEw/9zXfD3E5krEbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipr8r-0002b8-Jt; Fri, 10 Jan 2020 10:03:45 +0000
Received: from mail-io1-xd31.google.com ([2607:f8b0:4864:20::d31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipr8j-0002ae-Vo
 for openwrt-devel@lists.openwrt.org; Fri, 10 Jan 2020 10:03:39 +0000
Received: by mail-io1-xd31.google.com with SMTP id i11so1430357ioi.12
 for <openwrt-devel@lists.openwrt.org>; Fri, 10 Jan 2020 02:03:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Kwu9B5yDwE+nOd3rwaJLi3q0NIMIPzoxns9g0VPE/NU=;
 b=Psb4HD9DWWcLwlQxewePRKMlXxGhVcZUdVLgiAN60nC5gOs72rSIh5LGLb8hQP6sdB
 QrMUM797FmLqz8e9ILN3ywqW4GH8ilw8Rqw3KhQWhNdi9j4Jjf09w5VznYNaOh/h8i7p
 hpM7IMDGK+eH9dVRUnZFZDwJyV85nJt/Bdmd7bYoGB7Bw1YQcKFkL51gfU8quShffxe5
 huDL6R0qOyQ84C9Sixk8zrblG/cnJyWVK3nZxF7uq6cGg6TpEaTxpc6n6UVGPgWKFB7M
 FJbQzjrlMTxBBGR1FyDbCpj9UI7sqns/NFrl+OIMlseU+ja7A9o4HM13ziF6Gs0mhqwx
 8FSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Kwu9B5yDwE+nOd3rwaJLi3q0NIMIPzoxns9g0VPE/NU=;
 b=hYaCGHMgcMMg7glh7xgBjYRrfiWR/rzuQvGgJV7MecQvV2C7ovCE0TJJGBPuy8HEg/
 O9xohd+cprV3q/lnMqoiUb2xuuaSi8MP2FwYN8locTWGbMmD/qeZTeVepLhqoLxemVOw
 pZFssxjQUkx5j6HfBQYyJVUAF6iwEqwtMBMKUDduMBInsc67wtOfoS+7MQOaHP7BTq3t
 80AV4TNosyizKT8fXq7TT2VlyAKIujc3eWTc4y29RpgUCLIJCiF8gBkfAxYFebnnbAVG
 BJ0R4BkNkKXsqSWLnbLmpESRzCdOVUDOBUS44ZYMW2qXTO57lddJFLRN1QOannyLPXwY
 djqQ==
X-Gm-Message-State: APjAAAULb7IxZPlHr9HMqgVnep9anx1ZfLvawcS24hGYJSinlCYOBLHr
 lhFlBuaLTJ/Q7/eq1bisYTS2aK14omZ5DOIuEdE=
X-Google-Smtp-Source: APXvYqzIaYPVqTmettSBmIpJPdFzQp3BvF5dQ4FouXTdX3SuFP3wyNDWpVENMLD/IMjtxMywtmlSnqIds5WfRWAcbwc=
X-Received: by 2002:a6b:8d43:: with SMTP id p64mr1610603iod.215.1578650616569; 
 Fri, 10 Jan 2020 02:03:36 -0800 (PST)
MIME-Version: 1.0
References: <C02EF912F243ED4F9D4C4104F769FA4869CC52A2@SKDAMBXM02.mb.skoda.vwg>
In-Reply-To: <C02EF912F243ED4F9D4C4104F769FA4869CC52A2@SKDAMBXM02.mb.skoda.vwg>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Fri, 10 Jan 2020 13:03:25 +0300
Message-ID: <CANoib0F=52dvXTSccaHV_XUZaCW-63y6h8Ek7Fge_u_Rih-S6Q@mail.gmail.com>
To: "Pumr, Ondrej (EEK)" <Ondrej.Pumr@skoda-auto.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_020338_030063_139186C6 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d31 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Question: Migration from ar71xx to ath79
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhpcyBtZWFucyBhIHN5c3VwZ3JhZGUgd2l0aCByZXNldHRpbmcgYWxsIGNvbmZpZ3MsIG5vdGhp
bmcgZWxzZS4KCnN5c3VwZ3JhZGUgLW4KCtC/0YIsIDEwINGP0L3Qsi4gMjAyMCDQsy4g0LIgMTI6
NTAsIFB1bXIsIE9uZHJlaiAoRUVLKSA8T25kcmVqLlB1bXJAc2tvZGEtYXV0by5jej46Cj4KPiBI
ZWxsbywKPgo+Cj4KPiBJIGhhdmUgVFAtTElOSyBUTC1XUjg0Mk4tVjMgcnVubmluZyBPcGVuV3J0
IDE4LjA2IHdpdGggYXI3MXh4IGFuZCBJIHdhbnQgdG8gbWlncmF0ZSB0byAgT3BlbldydCAxOS4w
NyB3aXRoIGF0aDc5Lgo+Cj4KPgo+IEluIHRoZSBsaXN0IG9mIGtub3duIGlzc3VlcyBpdCBpcyB3
cml0dGVuLCB0aGF0IOKAnFN5c3VwZ3JhZGUgZnJvbSBhcjcxeHggdG8gYXRoNzkgYW5kIHZpY2Ug
dmVyc2EgaXMgbm90IG9mZmljaWFsbHkgc3VwcG9ydGVkLCBhIGZ1bGwgbWFudWFsIHJlaW5zdGFs
bCBpcyByZWNvbW1lbmRlZOKApuKAnS4KPgo+Cj4KPiBJIGRvbuKAmXQgdW5kZXJzdGFuZCB0aGUg
bWVhbmluZyBvZiDigJ1mdWxsIG1hbnVhbCByZWluc3RhbGzigJ0sIGJ1dCBJIHRoaW5nLCB0aGF0
IGluc3RlYWQgb2YgdXBncmFkaW5nIHRoZSBmaXJtd2FyZSB2aWEgd2ViIGludGVyZmFjZSB3aXRo
IGltYWdlIOKAnG9wZW53cnQtMTkuMDcuMC1hdGg3OS1nZW5lcmljLXRwbGlua190bC13cjg0Mm4t
djMtc3F1YXNoZnMtc3lzdXBncmFkZS5iaW7igJ0gKHNpemUgYWJvdXQgNCBNQiksIGl0IGlzIHJl
Y29tbWVuZGVkIHRoZSB1cGdyYWRpbmcgdmlhIGJvb3Rsb2FkZXIgKyBURlRQIHdpdGggaW1hZ2Ug
4oCcb3BlbndydC0xOS4wNy4wLWF0aDc5LWdlbmVyaWMtdHBsaW5rX3RsLXdyODQybi12My1zcXVh
c2hmcy1mYWN0b3J5LmJpbuKAnSAoc2l6ZSBhYm91dCAxNiBNQikuCj4KPgo+Cj4gSSBhbSByaWdo
dCBvciBkb2VzIHRoZSDigJxmdWxsIG1hbnVhbCByZWluc3RhbGzigJ0gbWVhbnMgYW5vdGhlciBz
cGVjaWFsIHByb2NlZHVyZT8KPgo+Cj4KPiBUaGFuayB5b3UKPgo+Cj4KPiBCZXN0IHJlZ2FyZHMK
Pgo+Cj4KPiBPbmTFmWVqIFB1bXIKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRl
dmVsQGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL29wZW53cnQtZGV2ZWwK
