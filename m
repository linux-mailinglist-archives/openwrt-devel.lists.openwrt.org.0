Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0641573CB
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Feb 2020 13:01:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XlmBhkOglCSQPgz0Jc6mtznb3UEiUoSj+FBbz18BGo4=; b=kiWOt+g+Gf3+8v
	z54BPR1tt865bZla0OdaulZOd3p/4wRdPFnLMjgIkzAflg/G5hzIMNMh6YSfvzctnW0oRvNtaD5TU
	66znE+T1+dgtSsVRH3xbVgSAWtYsjL8wEkXIz9DUfDxansUpuMsxEkmeCCuSUoY+VIrCSUtR/7iGq
	6hbQ0qG21RhH1GGqAfDt9jXjFHAmJqy2gGdPpuUuKrUfOJhrC0UKPU0hMdQ8mwpTdSCOO+VaWnfEC
	pwrAsHVYd4XdzzxKbsx//3bXAZ+Tu7pVJuBNiB3W8Ify+8VL2I7j68snwZanTUij+lstmoKevXj1g
	lXurSbCadYQ1MiRmu+sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j17kU-0005QV-U4; Mon, 10 Feb 2020 12:01:11 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j17kJ-0005Pn-LM
 for openwrt-devel@lists.openwrt.org; Mon, 10 Feb 2020 12:01:01 +0000
Received: by mail-oi1-x236.google.com with SMTP id p125so8907101oif.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 10 Feb 2020 04:00:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=us33ukV3DJvHKbOcF+G4fJ7EgaSQXznTjqG2dGjNwDM=;
 b=me3Xe5AimNuC3WuOjIygcs3f8zALXSLWT98toratnTapwiw1y74BdN5WuZ8yrlbw8u
 IdFulAEJZmvmBOMxH5jZBwmBlwHOY74hjqlExUkg0kSLYJZz9E7d6080ZLJ55zAoQPaP
 Cl4W7oqCbQDlaAUzHL/Sv+xnTod6jgvvBops01C9ALDOkc58CG6cihhlATfKjS7wVwvb
 zy1W7Huze7d93HUXPbDXk53LeBTetLVD6H8vFOo74wBQSPXVjWUNkxBYwFD0ri6KwFDU
 U3Z31zdT7oQ6emcvy80Mi1KfkmaBESEAqb4A4XKTiGlaDExlefMh3VkpGAPSqWAQ07BN
 Xh6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=us33ukV3DJvHKbOcF+G4fJ7EgaSQXznTjqG2dGjNwDM=;
 b=TUlcC+cwiN9gqG493kH3T1Zjup+MvHhE2qj8bjajB4nS0pzAd7P3xl9DTPDURVrcsJ
 0WlKvQ4DJkUo4gI2iHqSu5kQiox3nT1Vafu1AU4z5BUF4FzmrH1SHFBd29ubr8TkCWj8
 MCW1rueYU9RowBCKJEFbw/Sz20JbwLRFcVJy41+uBJseWvEVl0mhp7QSn9ud8vK1OOk5
 x77Dk1tqdgJupA5kQAAcR5xFZQHolaCKWrc4wHwesiMjyOMxwl1tOK5SGkszTv8m9AWo
 LBb/vZfRXjXoC0AeEe5ybIKagUlWIwndkDbOsGNFfanEa/E5FmyWKIPGEH1Uf3iYBZM6
 lkxw==
X-Gm-Message-State: APjAAAUKC7UazFfKPTiQirNNFQQYKqxOuv7wI0ImZNW7FtYUN+p0cDE0
 PGQuZbZ4eMalaPknmiWFy9utXUDyc56w8UwTT4QYcJAR
X-Google-Smtp-Source: APXvYqxeFIuM25H7O35izaHGbEIXqV7BlBPDNUQB2Siwv2oVLzp2kSPJisYBXrr0AAnthP/hW+IiME05zqvmHVz+B/I=
X-Received: by 2002:aca:72d0:: with SMTP id p199mr627682oic.40.1581336057558; 
 Mon, 10 Feb 2020 04:00:57 -0800 (PST)
MIME-Version: 1.0
References: <000601d5e004$c42c3460$4c849d20$@adrianschmutzler.de>
In-Reply-To: <000601d5e004$c42c3460$4c849d20$@adrianschmutzler.de>
From: Rosen Penev <rosenp@gmail.com>
Date: Mon, 10 Feb 2020 04:02:52 -0800
Message-ID: <CAKxU2N_X2vb2jMV9hCCgmzADh15mWRxW7LcV2qeL=F_sC4y0vg@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_040059_709183_2B4A7F52 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:236 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] SPI 104 MHz on ar7240/Spansion S25FL032P
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, Feb 10, 2020 at 3:25 AM Adrian Schmutzler
<mail@adrianschmutzler.de> wrote:
>
> Hi,
>
> while reviewing the PR for the TL-WA830REv1 [1], I was wondered about the
> unusually high
> spi-max-frequency = <104000000>;
>
> The author states it's running stable, the datasheet tells
>
> Normal READ (Serial): 40-MHz clock rate
> FAST_READ (Serial): 104-MHz clock rate (maximum)
> DUAL I/O FAST_READ: 80-MHz clock rate or 20 MB/s effective data rate
> QUAD I/O FAST_READ: 80 MHz clock rate or 40 MB/s effective data rate
>
> and according to the author, there are other boards with the same chip and this
> frequency, e.g.
> https://github.com/openwrt/openwrt/blob/master/target/linux/ath79/dts/ar9331_tpl
> ink_tl-mr3020-v1.dts#L123
>
> So, can somebody lend me some expertise whether the value is okay?
>Sounds bogus. I remember on mt7621 the speed pretty much capped out at 80MHz even though the chip supports higher.

> Best
>
> Adrian Schmutzler
>
> [1] https://github.com/openwrt/openwrt/pull/2752#discussion_r375829096
>
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
