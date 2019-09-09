Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E541EAD9D0
	for <lists+openwrt-devel@lfdr.de>; Mon,  9 Sep 2019 15:17:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U6o3ZnCFOVcnuBAxoQGfY6ux+Lozo3P2RTU5e23BBUI=; b=WPk2Tmb5cIVNR1
	gpDwNt/0nHk4nLsqYxScb69qUKPcEUICgTVxS7snPMdyxKwKlJSWIh1tw62D12qiG0jk3Ty3rQcMR
	wPuGPm89aRuI9LQixVpg+wUUxletJzMHdmQfI948/BYbEwcl0Sk/WCudfWO2OBLS5bK2+PBuinii/
	jkKu7l8wKpJd5Brrf/IBDF7u+orLRa2lL51glG1gasMlzZbUyJGnXcCebNldllszOds1fCTjOiJp1
	a9HmY6T5eSWAjkuZdFTht8Qe3Z87WZfH7Vw1N/+IAmTKiR35dBDygMOLFIBsNfw+PUmr3FFJujR7u
	QK98Xlwkcn6zfswyFPwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7JX9-0004uz-0N; Mon, 09 Sep 2019 13:16:43 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7JWu-0004uB-Fo
 for openwrt-devel@lists.openwrt.org; Mon, 09 Sep 2019 13:16:29 +0000
Received: by mail-ot1-x343.google.com with SMTP id g19so12321475otg.13
 for <openwrt-devel@lists.openwrt.org>; Mon, 09 Sep 2019 06:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1mi/cmd4oY1mZE51HPf2Ix1HyUrUytit7K+Q0j30PMY=;
 b=LcCWBYUwsvMaVsOkEpxCSjqIghWKZSlERtjoZNiAE6hJ0lNSI4+dAmjf1kwo34demP
 XkD6eJV9fQzDgplxHCK2z57rCYL2S2D+e2DVHxPUINRfwkRW4r7VRylpeCtKzHjUdHJ6
 4MchkUJv4GELM3/xffGCPzC5IiW3NG7F62iXh6cMOfdB5Nh1lLcusBRwonnnLbUhVjK4
 +4zLq188pOUrINkaXegffKBWnAfaIMgvWXGMN197BoakKDTJsf1M4mPKAx4HsKqODcbb
 3ID1dus8YkIbpsjxXeyFFiMxeV+xN/Wp0i4LhGcpzDt2NE1nN0Roh1R4EvR9AS/y48z3
 F08Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1mi/cmd4oY1mZE51HPf2Ix1HyUrUytit7K+Q0j30PMY=;
 b=GiBiW9mZl1QzknBL1ViXJqEhDBsKfCdBfD/lf2ZDNq39eZb8lX2tRQVNuL+rKl8Ql7
 FzI6uXrvpj0wPO4mPi6cp6AcTCDgLnWRVdEkPAahCH9wQ/1Gc+NwVW9hcrHLVO8QOQxo
 u1I8lFqw8dft7Y8C9ZG7b0YNwLlMbAf+XYl0Kj4c/4Ul/+u7dugJs10m97H6Vf3f83Px
 ddeZq+7XOLYiCwelshKgABBDKnrLh0ADq6yalBNg7dG5yDGvDy10ZD81Ui4+QbGMqBIk
 QhIn4/h+kTcYn6NOZN6kU2DoMPwysc+xM2kUMVbcTf+A+Ad95GWJAVxjwMiCrViSr2MO
 eNCw==
X-Gm-Message-State: APjAAAVK1303BZQ9h0oFbiADimme3IpKm8hn9Pb+4P9bFkjpF9xJSPgR
 FiYxtS6OsGvXEnmDIG7HkYWLA/KMmgujY16EH4k=
X-Google-Smtp-Source: APXvYqxnaPUHBEKb7XAabVuyRoYtKT4iYBcQgh4TM05l6iLJy1kI6WzUm39D3Yio73/1GJrW5rN6EDUkG5+/VCjZ5sw=
X-Received: by 2002:a9d:75c6:: with SMTP id c6mr10669381otl.84.1568034986724; 
 Mon, 09 Sep 2019 06:16:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190907150651.3513-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20190907150651.3513-1-freifunk@adrianschmutzler.de>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Mon, 9 Sep 2019 21:16:15 +0800
Message-ID: <CAJsYDVJwx0BfPQ2tpL5S1tM+gSfcevuWhW0AVyO-r0v00vTcEQ@mail.gmail.com>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_061628_547273_50765F8D 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 18.06 1/3] ramips: remove duplicate case
 for MAC setup of freestation5
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

On Sat, Sep 7, 2019 at 11:07 PM Adrian Schmutzler
<freifunk@adrianschmutzler.de> wrote:
>
> ARC FreeStation5 is present twice in MAC address setup.
>
> From older commits/changes, it is not possible to reconstruct
> the correct choice only by reading the annotations.
>
> Thus, remove the second case and keep the first one, so behavior
> stays the same (as nobody seems to have complained about it).
>
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> (cherry picked from commit ad4eb2241b33b05b0942a3fa7ed2e53fb6e84386)
> ---
>  target/linux/ramips/base-files/etc/board.d/02_network | 1 -
>  1 file changed, 1 deletion(-)
>
Both patchset applied to corresponding branches. Thanks!

Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
