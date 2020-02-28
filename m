Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2721741E3
	for <lists+openwrt-devel@lfdr.de>; Fri, 28 Feb 2020 23:18:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ohkc24ahH7WIwsPzLxbB66m5Rg47OTGsVD09FSJA74A=; b=Xvn6so2cLHeshU
	VhIxJKU1qOP9YUQRtHI69HChTuA9gZ3lQBtnipkH39+lmUdzAIzW3mQ8u/xmWkE9+2eQhu5SE8RNM
	gqQc58QP3dPMqS+VMXjW8BcRpXWh4otVhEqvEKn1SdUqCFnroA+th04BGeGaJ5Sy5mK+P0hMoCTLn
	ANPHx9ILsSdQvN+Nc3lK6ygKZlJotPHzE5a5q8ow8B5HSqXYXy1v6OBMseLzBc6tSc3BOs8aCrRbu
	qFHb1tc0w8Rj9sS48nHAR33quFBLJkj+ku3EhxLo/82o18iDIFP78KF4zMKSfJ32pM9LySGy/h0qd
	dZER1hwOHRdmydb6KHFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7nxF-0003bF-3c; Fri, 28 Feb 2020 22:17:57 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7nx9-0003at-IL
 for openwrt-devel@lists.openwrt.org; Fri, 28 Feb 2020 22:17:52 +0000
Received: by mail-ot1-x344.google.com with SMTP id z9so4087294oth.5
 for <openwrt-devel@lists.openwrt.org>; Fri, 28 Feb 2020 14:17:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=mjn67HBjGa8GmaQZHBZqAt5dIIkgXz1HgKuSViudMtM=;
 b=Q+CD9OLvI2u/kTdN5nMwhN96rYizYvHLCTmVifYroWlvFSU/zKNqf4ocHXT03jfe5S
 sSfJvPuniPhrPw25f/ncJjvxtD1eId5lUAKYrsTgK1Mexe2teR72XUDsiKhBlskXNaXs
 94MDNkf8ptsEKkFdy5xi13GKVEufgsuesKOG3ZIiD3NdnSbFZhwhewEo17WE6nMFq9Al
 UKEqwsNW8Jj04Jxb1rQN75bZ4REwSz4OqfCCxTKoMp86UYPn4JUPDMFmo/+RuOVj3Hjx
 phMSwoArAiUL80PvEUwuPpuwUSPavnDTowhfEBZyx8p6IJfV35mcoVhX1sCIf0PYJ6s8
 paZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=mjn67HBjGa8GmaQZHBZqAt5dIIkgXz1HgKuSViudMtM=;
 b=hjhxAHa5MSTVva2UDwizaug4IpUStPddyt+2bCKqPwQ3ywXVt7/sX+VeBqwb3VbXZ4
 +UOU9hwR6qA68fftH31aYMGbpAg4REJz/J74gmbAZuSTmWdf7kpSyZdtQ0s/Ih9V8gOZ
 RAjlqhlpE5H/Og8UMwOjlpXI9xpl61BCe3CptKGL3S6SCGXZRzyccrMKE+CKClvvHF2I
 MpgVF1Tu2rvrYnMdGewqODTLyrQvoJsao72GugxVF+gfa2duXGhsZTsDvB4yC3dkwUlF
 q7BV2b8OqDkAY7uMIz8ViRrrCsLHMVtlD8gWvcgJ+/CLvIsQ73jWeWqsKr0vPbSn+hY6
 VDHQ==
X-Gm-Message-State: APjAAAVavDepfyefB+devTq3z7VLzYlP9JVfgCexDx4tH+kyhJudYqUQ
 voHkOR1vpmKJaQWo275ngneWX/4upjySosyAzBhhYw==
X-Google-Smtp-Source: APXvYqwgbmf2b7c0TRsTA24l4Z5dHo7CRQSEovKmMKDzd8t2tDJvgIQKmyvMa576QXpjlEaw9EtxNS3LAOuyH+OYrxQ=
X-Received: by 2002:a05:6830:1e24:: with SMTP id
 t4mr5183069otr.28.1582928270434; 
 Fri, 28 Feb 2020 14:17:50 -0800 (PST)
MIME-Version: 1.0
References: <1582918436-20954-1-git-send-email-tharvey@gateworks.com>
 <20200228210614.GD2524@meh.true.cz>
In-Reply-To: <20200228210614.GD2524@meh.true.cz>
From: Tim Harvey <tharvey@gateworks.com>
Date: Fri, 28 Feb 2020 14:17:39 -0800
Message-ID: <CAJ+vNU3a-XwK_HcqvzEJhz3X15f7LQBp_Wo13MitXSC5oEZsfw@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_141751_630789_EF276186 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] imx6: backport lsm9ds1 imu support for
 GW553x
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

T24gRnJpLCBGZWIgMjgsIDIwMjAgYXQgMTowNiBQTSBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVl
LmN6PiB3cm90ZToKPgo+IEhpIFRpbSwKPgo+IGNvbW1pdCBkZXNjcmlwdGlvbiBpcyBuaWNlIChh
bmQgcmVxdWlyZWQpLCBjYW4geW91IGFkZCBpdCBuZXh0IHRpbWU/IE5vIG5lZWQKPiBmb3IgdjIs
IEknbGwgYWRkIHNvbWV0aGluZyBteXNlbGYgdG8gYWxsIHlvdXIgcGF0Y2hlcyB0aGlzIHRpbWUu
Cj4KPiBCVFcgaXQncyBxdWl0ZSBoZWxwZnVsIHRvIGluY2x1ZGUgdGhlIHVwc3RyZWFtIGtlcm5l
bCB2ZXJzaW9uIHVzZWQgZm9yIHRoZQo+IGJhY2twb3J0IGFuZCBpbmNsdWRlIGl0IGluIHRoZSBw
YXRjaCBmaWxlbmFtZSwgZm9yIGV4YW1wbGU6Cj4KPiAgMDA1LXY1LjctQVJNLWR0cy1pbXg2cWRs
LWd3NTUzeC1hZGQtbHNtOWRzMS1paW8taW11LW1hZ24tc3VwcC5wYXRjaAo+CgpQZXRyLAoKT2sg
LSB3aWxsIG1ha2Ugc3VyZSBJIGFkZCB0aGF0IGluIHRoZSBmdXR1cmUuIFRoaXMgcGFydGljdWxh
ciBvbmUganVzdApyZWNlbnRseSBnb3QgYWNjZXB0ZWQgYW5kIEknbSBub3Qgc3VyZSBpZiBpdCB3
aWxsIGJlIHB1bGxlZCBpbnRvIGEKbGF0ZXIgNS42LXJjIG9yIHdpbGwgbGFuZCBpbiA1LjcgKGxp
a2VseSB0aGUgbGF0dGVyKS4KClRpbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBs
aXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGlu
Zm8vb3BlbndydC1kZXZlbAo=
