Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D241B9B0D6
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 15:26:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tMFIm/tmjzXEucLNzNESKXSk/RxZQQ2b7NOZ5dcvYwQ=; b=OeyNFSSRxz62oH
	dOTxK/0UTlCnfoHIFv3QNbO9QMOO47R3uZmD0PWFjWzgzkdWrIqBmowEKpaNcs7cV5LXRwaDCUHdv
	dxr8h+9c/YMQ1SMvTNlOWDDhLqoQlQftH9TYde8CG7LArLBldClISTS9rJ5ejFkrd8n338LHcH65K
	/Nf+xgaQSxQR+VY51mRFGgKwjTk3gNfY+MU479BANA0HDmKBeG5bL4ZVmnEtYz+Cgy7WNC9z6CQ3i
	4r6dum0KgX+lySUvHJbcAziMEZWfIXkKGKXw269XNWiIoQR8fvZNDcEyHY2igMAQ/iGNhj+CgNl95
	qx385jnqR5+ebmf5tBUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i19Zn-0004v5-HT; Fri, 23 Aug 2019 13:25:59 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i19Zg-0004uJ-4c
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 13:25:54 +0000
Received: by mail-ot1-x341.google.com with SMTP id z17so8686388otk.13
 for <openwrt-devel@lists.openwrt.org>; Fri, 23 Aug 2019 06:25:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jiXO3BLaF9pHYQuxFbEjRENXVYbapjBWirWseCW7jLs=;
 b=Y+lBRxuXjkzAjWCnuheH+fDLaamA7J7fRnSJbR2Nb5sZ+9cgazeCUQoGy54KWy+LuL
 HKiXFvOohR3yjLTeIUw6MSZPaD7KH+o9M3SwpDzcz89qBwbvnaqQiPlNymmawTHgg6fZ
 /JHnH5OOrJ4TVqGyQ5XB4ysMXKc7ZqHorGmcb/omdm9BoOxDNG7pQOb6ZaOg6EBm7MYz
 ivlbm0nZqVAo9+/zEQM2Quns0YzSIbhAZbkRIsFTriTCBv4WKzICh/pm0JC6yLjS9/lX
 Av21qauUHUcIv5GcMMw5mtyO1D4YUtSFUmGMEK+YtbzQB9Y2XZfIr9AN4+TfFrCKIj/d
 ulGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jiXO3BLaF9pHYQuxFbEjRENXVYbapjBWirWseCW7jLs=;
 b=oR/KwTLnlCHKNn+gvlSZBLZh3l24YxKyDSxodM0EBh3nnakUQmDYRerlmdtqB0wGaA
 RUkTwsv2qzM8zIFGQb/LdHflSUPwhvgup9tpHCpEutf8vdtB8aSUxIiI+I5Ew7K+wewS
 FSjKhhymcRQM0ylN4wBNbuRPXQ5Q9p5ZZJd1ZQBK+XjSP2r92QI9PnUpE373kt7U89jI
 eifx2N1x2h+OFmAnBM30t9Zng4gnBXMYaqEHNPp0jPsAtSbPi+/UV8gasTYCKWpsa/H8
 qSXC7YtA9Iuoh/XLMrnnSnbCk0CEkBXVpLgrZ7shTgrUa4P/A+pjwQk8V+Y4KbGHc95W
 249g==
X-Gm-Message-State: APjAAAXxdGY6f9vugk7tGAtxumg7ecG3/xFCgU+zEC2U6VK3/YRsJHhC
 3jYxJkznQ+JKEd0YbGmR0k9GSuF0BoV+0qLawJ8sEtgMkk65Sw==
X-Google-Smtp-Source: APXvYqwwl0qHk6QAxW5Ov3aY3JHNECiEf2j3xbyoGR9lVCGL35fg1LtYRzr3UtMW87HPawXBmmD+R2A1iWDk18Jm1dM=
X-Received: by 2002:a05:6830:1184:: with SMTP id
 u4mr4064565otq.181.1566566750497; 
 Fri, 23 Aug 2019 06:25:50 -0700 (PDT)
MIME-Version: 1.0
References: <1566551157-23173-1-git-send-email-luochongjun@gl-inet.com>
In-Reply-To: <1566551157-23173-1-git-send-email-luochongjun@gl-inet.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Fri, 23 Aug 2019 21:25:38 +0800
Message-ID: <CAJsYDVKMLWkGWVQHLrQ8Y87pkoDrHB5k1w8x-F6QGcHz5+UiJw@mail.gmail.com>
To: Luochongjun <luochongjun@gl-inet.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_062552_198176_99DC3BD9 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: add support for gl-ar750
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi!

On Fri, Aug 23, 2019 at 5:08 PM Luochongjun <luochongjun@gl-inet.com> wrote:
>
> This patch supports gl-ar750, which was previously supported by ar71xx.
>
> Specification:
> - SOC: QCA9531 (650MHz)
> - Flash: 16 MiB (W25Q128FVSG)
> - RAM: 128 MiB DDR2
> - Ethernet: 10/100: 2xLAN + 10/100: 1xWAN
> - Wireless: 2.4GHz (bgn) and 5GHz (ac)
> - USB: 1x USB 2.0 port
> - Switch: 1x switch
> - Button: 1x reset button
> - LED: 3x LEDS (white)
>
> Flash instruction:
> Support for sysupgrade directive upgrades, as well as luci upgrades.
>
> Signed-off-by: Luochongjun <luochongjun@gl-inet.com>
> ---

Merged into my staging tree at:
https://git.openwrt.org/?p=openwrt/staging/981213.git
Thanks!

Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
