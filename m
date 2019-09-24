Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 192D8BC787
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Sep 2019 14:04:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=La9ssYrma+zfoucCoZRbj3/9ouDrlKwJWCg1wvMMgRM=; b=RNGDdXIT+R2wAu
	n51ZeRevJRiiWQ6stv5yrqdlC8nTlNhvM4SHSDG+ia4Nc2f0f0UttN3pCSJyNr0nQ291zxdzKARiH
	3Re3qbAjyOHPqjgSLzgefzP7uzA3IzbQqxciL5SfZJ4pVJ4Hwd1jbOHCA5wf3Jee/tQi87OUPFLwZ
	DeJy/XRooVozKJCmyUx9yPlT3+rDrTWHATrMfuL6OEnc8gkulgiQvPVhX5ED19qFlM2dy0S70+r4B
	6LZco2Tg8kuZJuZ2bLC2e6nP0v70EIO8h9HUKwvkt4vZk6lEX9UsCvizU12rOr2/VidlTHoE+kAwt
	DC2n+xZsYpyxLQQu7dJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCjYF-0005ME-1y; Tue, 24 Sep 2019 12:04:15 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCjXs-0005LZ-G2
 for openwrt-devel@lists.openwrt.org; Tue, 24 Sep 2019 12:03:53 +0000
Received: by mail-io1-xd43.google.com with SMTP id q1so3778628ion.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Sep 2019 05:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OQerXyb13jxTYNK/hZ1SjQa52lZgV5rRsXnpoKCnPGM=;
 b=kBzN/w+nQJkOvhahFYzHKJFQCqugLi5BbOgfIJ1U17woRNzkNYhF5ba7LCqb+ZRScf
 k3AgJuYia0cCVoFbL54+ceyllrezSt0BE3rpaS0mMPvn5CIvgepj8DNhzLjf/RUZBlIg
 0uiHmVl1m3YjGlR690sYvIldSAHjBgUuVpoYrfRUakAVUoOBuTHZg2213vS/7uRcMphN
 HBgrAvyYirEdxriMs8VgjBdA1gImL6CnJm6HeGCTj60gdKhIyahUwlNgFF+6YTD13B9U
 0rR1dr5qa5fnDWpNiLLUO6Lu3m7n4ALq00hf4iRvU6n0Tqo+vM/GdKcdnPQnJsdJZIuY
 Hcsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OQerXyb13jxTYNK/hZ1SjQa52lZgV5rRsXnpoKCnPGM=;
 b=LXgLYIQLC/XWgWWLXLAz+kfP5/qNhaXsARXNiBxM0NVE5U1Y+0v0jorhDFtfUWAa3C
 hsFXrQMfdfSDi1u2B2F9AP2ZsTI88Y53hw0Lk1OdYzDEM8fWQyOJ++SpwdvaQm1gYWL7
 O6wlO7mgc9m+Pnwsv1RwFq78+bja/w2FOjI8glyypddPhs1SZwppkhSJbY0GkPLrsEYV
 gvJeBP4uWhQ6fxpcJfDu1cJW41bdODie0WAEOwnfv0h8ZJocyOewYBBDQhAK02G4Tv90
 Qac6k5GDBf2Cxv0MBvYn7rzFpquu8EmHxK++7yZ0KV47h54UmrSuZSQPWhsNUBBH2Ns3
 JLWg==
X-Gm-Message-State: APjAAAV7rzbp0EefI7CGigGXNAD8T3S/wC7zGya6ICgIxMg2I1Hjv88W
 XB8dWmkIq/vlbluS+n/TI29FqFgSgTbN9a/9vq7zEXpY
X-Google-Smtp-Source: APXvYqxaLZf/FB7xWHpNKlhzvuk/EfuhggOztRxjGUsCQ6W8Gtvn2+RtUtoMK7vIv86pl/bOAmAeb9zOEfkIh+JT+I0=
X-Received: by 2002:a6b:b88a:: with SMTP id i132mr618803iof.215.1569326630734; 
 Tue, 24 Sep 2019 05:03:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190923133417.2546-1-freifunk@adrianschmutzler.de>
 <CANoib0HyZMifB0+ig8aRCVhWB8=YWhKnm8K5=6jg_s8=gN_bvA@mail.gmail.com>
 <018901d57222$d0ad4ad0$7207e070$@adrianschmutzler.de>
In-Reply-To: <018901d57222$d0ad4ad0$7207e070$@adrianschmutzler.de>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Tue, 24 Sep 2019 15:03:39 +0300
Message-ID: <CANoib0EFaZgUB+Ls1zJO2c9HuYo_066Bf1j5ZJfzcqChm9iuqA@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_050352_564669_13989C8C 
X-CRM114-Status: UNSURE (   5.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ipq40xx: remove redundant
 ucidef_set_interfaces_* in 02_network
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

> Are you just talking about asus/zyxel case or should I remove the entire patch (-> mark as deferred)?
I mean all ipq40xx devices with two MACs. I mentioned the two I have.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
