Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A879018E873
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Mar 2020 12:44:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VTZXv8Id2jviR/fXN+WL8+AQcPkhSpWd6TQFFYWCfJk=; b=AfDq386njxn/8P
	L3ANdLCj31AHd2d4yGnwXI8o6KfcelHtfAPpA7EqInSZ5Efu+iotC9prBsBYg1kATWU/tjv1Nf0id
	9XxNdYu1qm6Io9iQEL0zliitLJ6aY1kbFRRYukQ0+mZ5NMfFRyiF+1C6fkF1G4fGkAwLBf1pykPHo
	nTeXN1CAHVgZuc7W09E13eRf84HTlN11GDDAlpdmuhji5+zvihB/3EKGI6vDMaLrUx3pz8amg2hCY
	588Hj1i0PQhkTFlkCRBCbei1sfenhxCvtse6/QU0WbqBiBi2GwGsPZcFtKAN3TSeBp/2RWfDlRn6B
	P1Gtei6OY5Kdmk7nkFXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFz1d-0005FA-T4; Sun, 22 Mar 2020 11:44:17 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFz1V-0005EF-Fs
 for openwrt-devel@lists.openwrt.org; Sun, 22 Mar 2020 11:44:11 +0000
Received: by mail-lf1-x141.google.com with SMTP id s1so7959030lfd.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 22 Mar 2020 04:44:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=g2wmLWvupt39hAlEXq68lxS+w1Q4QzZp8Flb1R34E1A=;
 b=WWrh+rcYZ0WO9mDKWgGsVBpmKMNQgMIcDL8s6QDbgAriy8urxx74gNPMUM19QCjoOu
 +kyTEJK8jT29WlIIvZ7c5dmObC0Qc4bdDdDwBniWGZhnQ1NghqjTOEYsZlVfsghadJ8S
 HDjtrFLWG7Fc+S1JrE+gUBoYSBf8I2rO1M+hxA+/ALQ9nkfGC29/6G/K2Xi/zeD+IrQq
 vPYr0UcYQUf+NZH4+y2fsODg0huCU4OZPicd3mbJunjoXiKnwYxpd2TlCTosKvBUvvny
 luP4PFJiXqPXPC/jlYgiVo5LAGyBfjODcBdLy9FmQq0VqNgVWb2uvYSKhRC3ROAEA2xo
 REzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g2wmLWvupt39hAlEXq68lxS+w1Q4QzZp8Flb1R34E1A=;
 b=ZVl+6uhaZN6gp6+1P9duFuiNBJEHHC6ETgKb8qN7RMe2iXuttIhYyu6JJ/uHVrTPgz
 QxoWFqSG/o9oItcF2V6sRBpcwoiiHTbkY3qRwJSkfCGcEnkVcUKwFJjZqQtdhvM7mHPo
 BrNNmo1Cr4L+O3w/2xb8UNrrJy4JZPmN5Zs5VhB5r+vOahZFXR+toSLsIwzqXvSbsQwF
 F5qRFRvpg5kZteP3dJ1D+/coaBkplsq3Es0uuQ3Qv5MLmrXWWoRzsbSiOzLONLcOVeN5
 HDG+UlX6J4PGbnlT14nOhsnOsZkjSywoy4bkY2Bu0BDhyJ5vP1E8ygAVAtWzjuJXY57f
 n+uA==
X-Gm-Message-State: ANhLgQ3NEGG0V+MSGvKTSyzOpc47mrFED0dr75Go+Zev2jtfKD5KxvR9
 Bo/32P5b3CQF0BM3NFpgGAgyGGnG0SQeGExzvE8Ebg==
X-Google-Smtp-Source: ADFU+vunOM2O3Hhgin/HXZeGBL765AtTRFN/oxo/0r2/moXNqLkWLESthm/LDVyWr8PIK0iwEXptBdTRA5luxnTOrn4=
X-Received: by 2002:a19:2353:: with SMTP id j80mr9714887lfj.4.1584877443439;
 Sun, 22 Mar 2020 04:44:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200321130555.30053-1-linus.walleij@linaro.org>
 <20200321130555.30053-2-linus.walleij@linaro.org>
 <2036574.pORaqOsge7@debian64>
In-Reply-To: <2036574.pORaqOsge7@debian64>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 22 Mar 2020 12:43:51 +0100
Message-ID: <CACRpkdYQ5X6x9i9dzhbpbMLoKp1TrbEubbOEQnwWLfhRrdtd9Q@mail.gmail.com>
To: Christian Lamparter <chunkeey@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_044410_118662_FF78EDFD 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] gemini: Add v5.4 kernel patches
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sat, Mar 21, 2020 at 3:40 PM Christian Lamparter <chunkeey@gmail.com> wrote:

> I've made a RFC with a package for the drivetemp previously.
>
> <https://patchwork.ozlabs.org/patch/1247140/>
>
> would this work as well?

Yups this looks good too.

I see you pushed the modified solution so I'll go and
test it, thanks a lot! :)

Yours,
Linus Walleij

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
