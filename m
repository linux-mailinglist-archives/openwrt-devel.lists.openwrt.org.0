Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C7910B26A
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 16:28:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wnT8bP6L1zAiwWDGWXI/W1D9RATwSe8OC8Ef8ndy6vs=; b=NvVnwdpAQXBeut
	OekcT9wFeLdkF4TaySH6zjAxNe1vjvLZxfeLjANCwIw/Na1FWJ7MJVQ91MtB+ZVxa4Sgc0OkGWYTK
	zGJyRu6fXMwK+CDJ95fx9NgH5VCL33SoY60Wml0hyQ9nFyExNZcSZcKcvT/sCNMlUMAMuuDLHWcuV
	oVl15/PyxjYyo/R3jkd4eHfqPvpfcJo8l9f8NRPwP+HTT6cijWPPcmz6tgYuNcWUMbjOxan3QVBBo
	LF01BFVl2npoAuOFlfuDUF+rp29gyO001WVFyFJcpm+m1zhdrKGJz1tfCODZo30znIlsgF5UoJQhr
	dFMgXj6ny4cLCh3TLHFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZzEs-000758-I7; Wed, 27 Nov 2019 15:28:22 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZzEh-00074l-TI
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 15:28:13 +0000
Received: by mail-vs1-xe41.google.com with SMTP id g23so47755vsr.7
 for <openwrt-devel@lists.openwrt.org>; Wed, 27 Nov 2019 07:28:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=57+E8/kuQXFXMfaryezHccO6QwnkZRFvrFe2DabhQN0=;
 b=PvQ+4r/4iXCPnECv+sBf0wndkuItuspiMp8ZPLDx38gSEbfjaimZWccwLUg5+z1mGW
 ROiGPZadNNHyKioCzv9iwXiV/cul2q46cWO/SKu17D1Jlmys19xMq/LaIhbDeeiG0new
 5FodUMg2sNrWpQeQZTMxNYNtJRJ4buh99Rm/kv/HrUdcaEeICLMDL/AbOAOG7yzUb+g/
 H0UOvwYRqA5h6KlNfNBVCd/LtemSl+seX9NaGKZMibCvOMUOgvlbfrmOnuMW/s9NWDuw
 1EmFI4Bdm0rLKnsONVl8R9k3A/b0aPM/2JMJ9/1mMw10PySO48735SrzgPC0Sg/79RDU
 aCIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=57+E8/kuQXFXMfaryezHccO6QwnkZRFvrFe2DabhQN0=;
 b=C4idSkwet/gPVYHUGxuhiyP3eIROZoyopY0wyycyQ9hbdDZ7uM5IMJwfE6YTLza531
 knCMUc/yUnS67hacVmF5qJO6bxgBimBju5xsVtLoO7YU3DORO9mG2Th8d2xWNDc8Q+Bq
 NbL1s7Jz7iRLWuNe30pRZrSk/98T19xC6uMn/SiRcKT550zZ5o+E0YrI9alZxLoHWOp5
 h5nMMMFFiAOsLfsf+h2etzHwPCGB1NTc9swqNtRVTY+tvvBkiHs6adcvzFDdfXBF3+gl
 igFXzYbM/tpF1VtxJsx+RPWSFrlUseTXaugRdbDLPAMogs2chrlsiK3/RtCpF5s489yf
 U0JA==
X-Gm-Message-State: APjAAAUWnrjD5l/YdpdpUrL082fMSZlvTdqLYAzV1c7MtpZ7DlWYTJIS
 cEyraMdB91YINLxRWF5K39tmEfRIA2wMfE/Gmr2n0g==
X-Google-Smtp-Source: APXvYqwddhXyzMZdbZsIj3jwue25t/rA0HL5A1DyHuwIjVi/L9f83P1A6Z4Ygmw036KKai7Q5M8jB4H32/fzVoJJ9qs=
X-Received: by 2002:a05:6102:5c7:: with SMTP id
 v7mr25965470vsf.85.1574868490267; 
 Wed, 27 Nov 2019 07:28:10 -0800 (PST)
MIME-Version: 1.0
References: <20191127150503.GA61235@meh.true.cz>
In-Reply-To: <20191127150503.GA61235@meh.true.cz>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 27 Nov 2019 16:27:59 +0100
Message-ID: <CACRpkdbErhbNkQMK8haf=ZdSoLO55ke2FxErDJeknRKGVB6S0A@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_072811_957257_BF1724E6 
X-CRM114-Status: UNSURE (   6.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Pawel Dembicki <paweldembicki@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkLCBOb3YgMjcsIDIwMTkgYXQgNDowNSBQTSBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVl
LmN6PiB3cm90ZToKCj4gd2hhdCdzIHRoZSBzdGF0ZSBvZiB0aGlzPyBJdCdzIG5vdCBjbGVhciBm
cm9tIHRoZSBkaXNjdXNzaW9uLCB0aGFua3MuCgpTYWRseSBJJ20gYXMgY29uZnVzZWQgYXMgeW91
IGFyZS4gSSdtIHNjcmF0Y2hpbmcgbXkgaGVhZCBhYm91dAp3aGF0IHRvIGRvLiBJIHN1c3BlY3Qg
dGhlIHByb2JsZW0gd2lsbCBvbmx5IGdldCBiaWdnZXIgYXMgbW9yZQpEU0Egc3dpdGNoZXMgYXBw
ZWFyIGluIHRoZSBMaW51eCBrZXJuZWwuCgpZb3VycywKTGludXMgV2FsbGVpagoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
