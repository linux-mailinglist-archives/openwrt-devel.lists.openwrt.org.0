Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34250B657C
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Sep 2019 16:07:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E46Mfjcnp8ChLfWBQOobQCZ0uHJYTMLRxe2aun18RyA=; b=W1DQuEAj/MbWI2
	1oiiaru9UeJ5aDifqZdskedo3aJxA0V1YqQTAAG9Ls91RkLtPE72MVn4KeGd4vU7jvNE7xDAC6Sga
	QpoFU+uZVWTF2go5j84+tEKVujPqxcG3jg2CYkkAmpu8MjaUc1zZ/cMXVKMLihNAdK/kXkH6KSAYh
	PT/gkKoB+Vb4r2rdZEkVbh7BRUn/GNgTpsWZOeOHnkwdkAhbC5se5Az5Ow/FdlNQwzGCbvr8qXb6q
	2OKpqckSMlNqERKatwPUNK4rcmYgARVygR+u1tM/dPWkbxL2jchJIUUDKe+s1sxg9ZeRGh/490TMy
	6aAJ9eqqthb6vesO7cCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAace-0000hj-54; Wed, 18 Sep 2019 14:07:56 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAacU-0000hJ-A0
 for openwrt-devel@lists.openwrt.org; Wed, 18 Sep 2019 14:07:47 +0000
Received: by mail-ot1-x335.google.com with SMTP id z26so6468012oto.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 18 Sep 2019 07:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3kHnVwLb1weAA0KZ/2UHR9mVkASNkG66umLjSBTwITw=;
 b=H+7n1acL6cII66Euu4z6g17lC9afvv+4aqaNonbmsV2Fl04Nj6I7uSFFA1yMQ38hHM
 ycHsCT5eKYv6ssN4RzWtWpNY2256HfX7zDq/bulYg7FynytvZELv06mO2OCDAOfRapvr
 eiZthxjBtPWL07HZFqSpZCCaK9OQqmA8palH+aZ8iX6SqoHmsCcT9pPt0oi0bNfnYd2A
 wIoN97UdYUMDFblphE4JrVSTEY+KTPPyrJQwHpUGJ130eHPHckgfp1VGD/RfpMjinPai
 rwbN3aKonLNh8JAUAHw7dYN4MumUxb/a0bPZk6bljEczK6fVfC1ty1JfB3oAAITRMbW1
 EMww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3kHnVwLb1weAA0KZ/2UHR9mVkASNkG66umLjSBTwITw=;
 b=GirLg/JBfTexiU8cRVrpaAIuj4iLyWBe48mKVyS94q+GYKuzRknSJ+oz6WcYT1aLn+
 vqvxZUPUvDhjUTY30g+WwRjw/K3qSsZSg107B4hZoCxE9910CeRUIn266lyI7Ny2JwLZ
 w/1QNoKhoDX3v3qrVDkzMCcpleJuzDjmuYa4aYTrAJxRCpEl9w4GfdllROKchz/5/uGV
 vVVQKypYoUDVL5dYVE6XqNKaPDzmBhuYJHQDlti1+2NmxfEJ9I8fVZwz/W1VoFwWnOdh
 x69BjvaYqfcuF6i++JClku7hvfKpi+0rZQBa0RvGWUIenpI4+ZS4sJUapSE/hpXyEdpu
 GwRA==
X-Gm-Message-State: APjAAAUYxrBbDbQGkvKON1yUmKOmKT15PDiqZePz9H75a4BU7+fssE6Z
 0havDo2Np11IFez4q7lQrgLUsxNniBsPZzeAYoQ=
X-Google-Smtp-Source: APXvYqzc62XlZkaNUUAhqwJIm4TCsHZ0D/0AqYLzROd9KLguI7wNpJI6Kr+LaQnPbLGooXPx8LEMFN7JFrxx21IvM/k=
X-Received: by 2002:a9d:6b16:: with SMTP id g22mr3034669otp.86.1568815664990; 
 Wed, 18 Sep 2019 07:07:44 -0700 (PDT)
MIME-Version: 1.0
References: <008301d56e1b$214f38b0$63edaa10$@adrianschmutzler.de>
 <CAJsYDVJ8nr7Dk8gHR63=CT=tv8h6TYpfqky9guKfGFn2_RapkQ@mail.gmail.com>
In-Reply-To: <CAJsYDVJ8nr7Dk8gHR63=CT=tv8h6TYpfqky9guKfGFn2_RapkQ@mail.gmail.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Wed, 18 Sep 2019 22:07:33 +0800
Message-ID: <CAJsYDVKvUXTM5XUc_rs_GjVaMdStCjpjDqgp+nDDKaQaZ9Z9vA@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_070746_851773_2BB5C962 
X-CRM114-Status: UNSURE (   5.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:335 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Negative offset for checksum in ath79's
 10-ath9k-eeprom
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
Cc: openwrt-devel@lists.openwrt.org, Sebastian Kemper <sebastian_ml@gmx.net>,
 Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed, Sep 18, 2019 at 10:06 PM Chuanhong Guo <gch981213@gmail.com> wrote:
> That's indeed a misuse. ar9300 eeproms (which are used on ar9331 and
> later socs and ar938x pcie cards) have their macs at 0x4 and don't

Oops. Typo here. mac is at 0x2

> have a checksum field at all.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
