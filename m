Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB6C1DF42A
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 May 2020 04:29:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:
	Message-Id:Date:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9xY0DonDIDc9INfAiopxEKnA45HVpxidHUu+4B6YDn0=; b=JSZxsuq6AptlV4
	/6zjknBKC2gbcR+LTh8depScoWWJZUyx5uvUDSCdD5nxoOtgxvUkQxKzCLjcCg75714WU9ACPUM8Z
	w667ExU43mfAVMtlcohho5Ervyl17jqf5Dn6gY+qIN93o/oOe36+0FvQh4x++qqqWpPfmukIgpHuF
	V0aY/Wtpb7VoJ0A6jCeYkWixP3B8Wi/wEbwp6uzui2k65T5UArIr3QF6Hw7PVsnG6AMNSs8Gp6s/h
	8ztqP7x1QInsTgsAYHPySSW/xH7r3kYTkZi3SopDMUPSkGMqCgsCG6JxLgjeqNycypaVyTehUcC7A
	OZd+Z8+jtLZgM4R+fLTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcJuU-0000Cm-6A; Sat, 23 May 2020 02:29:14 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcJuM-0000CE-QH
 for openwrt-devel@lists.openwrt.org; Sat, 23 May 2020 02:29:08 +0000
Received: by mail-pl1-x641.google.com with SMTP id u22so5124376plq.12
 for <openwrt-devel@lists.openwrt.org>; Fri, 22 May 2020 19:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=LDdSiPxnpBaRN7M6mYYdqCJXoG0aOw2+INKA6LB9/kQ=;
 b=hOFBjY2kFg4O6gAscO8e1+4HTKdqCIvp4/g0eoiXuKEDSP1UZtCQbsCjK7FSVoMZrz
 aYuChVFlHOluHSM4VaiD80niXIB2zNk4TZTJSpXTFTvqIZnQgQWdcfrqJSha2BAXhoOd
 dxuHRx8REUb/s56YIrk/h1s3bd3C8EfklnLrMNVayswTJi25/degqGuvUrivHvlB4JwM
 pDjIOS0IFIDC5xQBNmU0zaI1pvsR9fbpzMaYV7zcFnWQgLvb9laMk3XcmFgxB2p7aqdu
 FGD0k9yzUZTav8KS+D1P7Lfrh2iXhR4XVuxigbZi+QodBDFGrYmxdJLOjcHRFVQtE7jo
 ZM7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=LDdSiPxnpBaRN7M6mYYdqCJXoG0aOw2+INKA6LB9/kQ=;
 b=TvZhqsNlv4DZsFB1Qj57Rzoym/MCk0NyMuMriE4urfPDDvBiSLNWnZiXyPPCKcFjZG
 /jKH16D1Geh04Tmv7oMsex110Lsb0lYGXc0f1vQykvHrVXVrKZRWhA0gCrO83pc8T0IC
 BQof2nJ4OqbqcOGx0z214DXolEkEeH3sPmSywMkPc3ojlF/B9+c34BwquazQ+5a7jfPM
 TM5ZrznI4oQ8TAue+017jF4jwohKQmTrLWgcStpQ2NUwu7T85+zv90b8ROX+evF0h1/i
 Xx0KNAm22KZcQsGCelaY+weQ6ALtbmsdC0aBJVjMwulCO+AmhoTnkJmalxOK40vmueQ9
 W7RQ==
X-Gm-Message-State: AOAM532dipJS9YP91wJlPFmKxGs6po3vA2xSPXoTc1p1jPqNeC2sLLrz
 XFdchBsRUdm7h37Ocoh2WG/on8Kv3GE=
X-Google-Smtp-Source: ABdhPJwQyAIBoYm8H/VcaXZtLBWv0hbejs0EMTQf4ZbIfn0nc8WEPP+MZu8SbAUg2GR2Ibq7cJ1lcg==
X-Received: by 2002:a17:902:7:: with SMTP id 7mr17689036pla.157.1590200943366; 
 Fri, 22 May 2020 19:29:03 -0700 (PDT)
Received: from ?IPv6:2002:4c0e:6de8:0:7940:a0d0:cee4:5129?
 ([2002:4c0e:6de8:0:7940:a0d0:cee4:5129])
 by smtp.gmail.com with ESMTPSA id cx11sm7998262pjb.36.2020.05.22.19.29.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 19:29:02 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 22 May 2020 19:29:00 -0700
Message-Id: <31BEA9B7-7BB5-4345-979E-6F68F02C39CF@gmail.com>
References: <20200520134925.GA10963@meh.true.cz>
In-Reply-To: <20200520134925.GA10963@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_192906_873319_52F64A1F 
X-CRM114-Status: UNSURE (   6.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] xfsprogs: update to 5.5
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Cgo+IE9uIE1heSAyMCwgMjAyMCwgYXQgNjo0OSBBTSwgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1
ZS5jej4gd3JvdGU6Cj4gCj4g77u/Um9zZW4gUGVuZXYgPHJvc2VucEBnbWFpbC5jb20+IFsyMDIw
LTA0LTA1IDE5OjAyOjUxXToKPiAKPiBNaXNzaW5nIGNvbW1pdCBkZXNjcmlwdGlvbiBhbmQgQlRX
IHRvIG1lIHRoaXMgbG9va3MgbGlrZSBhbm90aGVyIGNhbmRpZGF0ZSBmb3IKPiBtb3ZlIGludG8g
cGFja2FnZXMgZmVlZC4KSSBzZW50IGEgZGlmZmVyZW50IHBhdGNoIGRvaW5nIGp1c3QgdGhhdC4K
PiAKPiAtLSB5bmV6egoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Blbndy
dC1kZXZlbAo=
