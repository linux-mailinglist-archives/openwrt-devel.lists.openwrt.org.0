Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA0FEA541
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 22:16:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VhYBLBdCfUUiraWaoa/rKtIzKaoVrf1dF9HvToduJX4=; b=nYpBqqNF1l76X8
	XNt2ZommWihvsQZkQT3sIETXKnACqZim9rJtD3/gi6cjy6+GHWpnA9z3yVZjEVXrKvfpDi/u9jkzC
	lm1RkrUJYUCoo4PDF/fXqCJtaSjonLuSyIcAdc3trQFYfENF5oXnEIF9JRRHLnR4V20gkydM2ZjTc
	Pa8ldokK0qs/08GheJt90c8NUymtlIWWqQQl8X3vIb4lxTLn9J0pk3MZR7O6AIb7ddBKLNPB8jVI0
	ACLqFSEh409xw4RX4Li4txOzeF42AfYKCIxswWIJROhMzV1qsr6Djrlph3aIpaw7ImwKKifvNYYHM
	GVMlI0oVuiHqXDPVHI+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPvKN-0000lm-9l; Wed, 30 Oct 2019 21:16:27 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPvKF-0000l6-TB
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 21:16:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1572470172;
 bh=pw5Jr93RaZm535exQ/K3DTRt9G9VgR0UvPKSyhSdpCk=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:In-Reply-To:References;
 b=OImoKCPO7f2JLBWnThn0oJ7VjdxChpW5eRrmwJAuqzbxiOmGN+4kH/JQknyNT0rYT
 NkE5m94nzxp7JjiXJ3dfRCv0yvlIRdgfcEo+jlcrXZIvELQo7O9qM3pS7UVT0Jzu0O
 1x62vZruebbNgGy3iwydcGfyDSVYM7593AlzQF3k=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from mir ([87.182.153.228]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1Mq2nK-1hdtCI3DAg-00n74P; Wed, 30
 Oct 2019 22:16:12 +0100
Date: Wed, 30 Oct 2019 22:16:11 +0100
From: Stefan Lippers-Hollmann <s.l-h@gmx.de>
To: "Adrian Schmutzler" <mail@adrianschmutzler.de>
Message-ID: <20191030221611.5ac4b262@mir>
In-Reply-To: <012301d58f3f$2f360a40$8da21ec0$@adrianschmutzler.de>
References: <772e4320-c84d-dbb0-6243-d2fb150d2401@phrozen.org>
 <b8079f7e-d50c-45a9-d2f9-984f10716cd0@hauke-m.de>
 <012301d58f3f$2f360a40$8da21ec0$@adrianschmutzler.de>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Provags-ID: V03:K1:rVPjFUKLfwjP+oBBdRpX2bqBJOwvaeJwSnS/3muGSi8miNlqC74
 NcS5Cyc0GDEa+D8EzULfg8Bf7CQbVx4SHaLYXpzg+2ZSnELDj16kV2isz2FhrVDdcWfZ7Si
 5o1s/xJv+WOHFSEsnCeIKwA2WZRYjdcn+zys88BrnHARt1uBT38FXw9IXmLEP2VrmB1kU0Y
 RPHINgvB4YZ4dDvzBF7uQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:IIOgH1yEQMQ=:LPHNKI4mfRevtUPmSsEd16
 Dnr7ezM8UfiwpuW4yGIGwi7yvlploupTEA1kJrGRj6BZvzu+JrJl4QaSvUvvNDFLncP5kyLUJ
 IR4L+2bv72Akh669jLe1DcIjRZZODDU8awK/JYGX+/RSdHmIl4yOxO5XXAMtsTzoIPWunDQTg
 B4Hstf33FkvA0FCEsTbor9c3H1LjYxAUHye+vQ+fTVxhu9oqC8CkXkOOWvzBJQEA90jhd/1VF
 coCl3yVdaRsRWT8tP7e0gkEN24G6Y6nVShtDpK49g8X9z8gUorsOo3sZyDJF9xHGeE8f9Mc04
 4939P+Jl6F9UErElHkoyfAf55GAcIoTq2i21N08ItkYKtuHc7D7QJRKMyObzg3RvOqRmolpvv
 h8LhV4hETVoH6eneHEP1mBzf1tnGveZ/cSU5HwGFq5tIkw5GwWyLVkEcG/Pdytwd/IZ6kL51U
 vu/d2I7AvPKFO6+HjVCuNOYiSP7BawhOKjg1D9YhLtD0wt2W+T7lJd5a7JWwywv5gzBbqdMN4
 DdR6+xZRBohv9A8HLC1Fa+Y20XXOA8omKEZAc5bh9I6m27U6C1NCcUQgTS22qLuKqKKIUA+Yv
 51vi3dzyGKD2rAdbWOMNMZ2NEWTHVGBvz9pI4FcumUhPtwbr++fiHXb3qZAVhx02JGY4APIHA
 IIdvvTE3UWNbHs3MVEBNzAZQY6VYksesZGRLGTN6s7VxIa/9VTA680anh/MVB/lm5qUH5avjj
 wAfxq+X25vUakUilWXCHfHHyE9JC1MkCtdl2v+S8v0ES8M+IWjNmk/MEfMuMsJIVYNIQsToYy
 syV8qQEbAS9bcQIPFz45wmiTQA88aokvIPBVkwZ0Tne9nXp/oTJjihmNh/WoGrQCWzoTheP2u
 hZz7Qk7oAJfRm/3gGEinhwPftyy7TDoR2ejF8h66pdhf2gm3XP6O2FCD+W5u2Ma4CnEKIzAjm
 X2aPyNorES84eyZJ1m4qBE108IZk/4YHhv1ohb0/PLKPnLxbL/CIu24qoKk0R2gP/xM+dFb0F
 KgLPbCgiSKsPNjpdKDdIrfKpm0AfFNVZzrc0MaIM3OHBSsozo3XkGNxkTW3+zwXs7Y64J+M22
 VfAIeC6uDaP4o9SSZdpod1J2d6FwO0WSKeq/D0LGhcbJHZZbzmQPr85BIuJan2RsTUFm3nuoE
 mMHg/ltr1Mr+zG3rLj0Y2HU+iHkntXCKgi1dH6Ja/qZHVwLynHQZvD8i0AF91bkUlHVuP9siW
 8ExnnShAsJrgaJcOCpkOJHBvOsAiSMDXSCIFAHg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_141620_279794_B8F3E696 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (s.l-h[at]gmx.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] v5.4 as next kernel
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
Cc: 'Hauke Mehrtens' <hauke@hauke-m.de>,
 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>,
 'John Crispin' <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi

On 2019-10-30, Adrian Schmutzler wrote:
> 1. We currently have work-in-progress 4.19 support PRs for ramips,
> ipq806x and bcm63xx, still with considerable work to do at least for
> the first two (IIRC).

Kernel 4.19 has been working fine on ipq806x (nbg6817) for me so far,
I've been using it a for couple of months now and the pending pull
request[0] is functional. Yes, there might be further optimization steps
possible, but none of that is necessary to switch ipq806x from v4.14 to
v4.19 now'ish (routing throughput is already significantly better in
v4.19, jumbo frames no longer crash stmmac, so I do consider the current
state of the v4.19 patches for ipq806x to be an improvement over v4.14).

Regards
	Stefan Lippers-Hollmann

[0]	https://github.com/openwrt/openwrt/pull/2472

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
