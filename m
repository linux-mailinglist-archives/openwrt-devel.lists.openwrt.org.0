Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4989E1CEF49
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 May 2020 10:42:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2H/ccGxcwgaGruHNFZCU8ppukLlIBF8nMRPzeOErKU4=; b=ppO7K66oMpKbWZ
	fAKYokUgLyox/CpyGyh8fRCqygfV54SWLU5GDaSmfSapEiLThqEISEy2KlGrONKflI0awnXvIKhd0
	z6ALB5r+kz0pmLI+cBrVdPX0cg2HvJLYEnjvhGsTMgCGGBuHAN1Kz9JhIzJqtbI3KE6fYXvsWYrmB
	otGxiJHsGVQheIpP7QGYvS4gkJ33c4HmCfkLvSiN88n2lTmqx9gKfNhgZSZ3GefsncCB+Od87RU2Y
	DxSz3rrE8jLb01lbJ9PGPx+LbO4Wr1udYJZ/YFR4rudb/Er+keTUvv4cXQOW0KUcrIxI4mqZF1xXj
	nv9wkL1uPLJ6fxI+ZoGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQU7-0004k0-TI; Tue, 12 May 2020 08:41:55 +0000
Received: from mail-il1-x12d.google.com ([2607:f8b0:4864:20::12d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQU1-0004jG-H9
 for openwrt-devel@lists.openwrt.org; Tue, 12 May 2020 08:41:51 +0000
Received: by mail-il1-x12d.google.com with SMTP id b71so4608945ilg.8
 for <openwrt-devel@lists.openwrt.org>; Tue, 12 May 2020 01:41:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aleksander-es.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YjYirWJKDYwttqus6FGxdCa6cvlAnCjglTfC4rRTuEU=;
 b=Hu+HO0i0V8oX8TXIH3GfCImMrTr3/S569TKWcx+0LDHpvu0H0J8kHPdQgGW+M8OGyc
 l8zYEzYQqqpIvUp8NNhB2ZMhbzMpjlck9Jof/5LKyjB6biVp3mt7/UweolszzYM+fj/R
 jmis8RRvEjHaAk5cRWCJO/uKxrouY7bosTpPQdX04CUbooRQ2LZ/3F3+oryePeyc/eJR
 9YgZzq/653mgV3PIogvG2vSkdYm5DFcNKEYRsrakGewMIkr3qnAs5tTYB2FPmJIMNw4f
 NjFwQw+xLchJxABSw7BASTnUu1JX2GQskOKKQM3MQomSFrjwFzLDmvw8ao+AnRC1j1L4
 hXjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YjYirWJKDYwttqus6FGxdCa6cvlAnCjglTfC4rRTuEU=;
 b=msz1tGzLr+6DogNjqOUE24sEzb7Bx4o3MuraRWLQ2mBzv+jdhxV+/XtXqH6h8UIaAY
 pA8Nr7CeOejx7oYs4Qha5bcLv4DYS+cu5SlzlXdCFYg8VzdIwReX8i9azuQj12RPV4Pa
 ftrHQpxa6r+23gWCo8INW1Xf4MGsG/IeWnPsWJSAEMhOZ0Wz30N4PKYpAoaIp7DTKafS
 DSdNEoduaTfXrvHd+vRgaayUVvZEAiIbEjmhVrl7TmjGgOUB/968vQ3SsFow8LYFjoU8
 AConN6YE8Ps+Vao6I6hi66cKCO6V6MZlO3KcWLxHtuBkqhO2Su6Jw/yJdLsFIZe22FaM
 om2w==
X-Gm-Message-State: AGi0PubaZ4cKjcReD0UQHEYxHS4WZ7G4PeCPCgjKcgwkYEso5aLMaY2e
 KUCrXKNiy2BDEMlQUnxCdRufUeC5q+fvxTc/jNQk+g==
X-Google-Smtp-Source: APiQypJH54sqwXHo+yDx+aLAaqCow0CJ5UG6eFo/RVFeYuYBpWqB/1e1V/GeTj3Zrm6AdvIOZL1Gu1kxMGBFS9y+h/E=
X-Received: by 2002:a92:c845:: with SMTP id b5mr18831418ilq.63.1589272907914; 
 Tue, 12 May 2020 01:41:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200511185653.1f81ee9c@meshplusplus.com>
In-Reply-To: <20200511185653.1f81ee9c@meshplusplus.com>
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Tue, 12 May 2020 10:41:36 +0200
Message-ID: <CAAP7uc+Tyfg8nmk=3qrPK4xeCOMx-m62JKMSdgxpbwA5h_4+6Q@mail.gmail.com>
To: Alex Ballmer <alexb@meshplusplus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_014149_639833_1686F30D 
X-CRM114-Status: UNSURE (   5.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12d listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Quectel RM500Q failing to get ip address
 assignment with netifd and modemmanager
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
Cc: "ModemManager \(development\)" <modemmanager-devel@lists.freedesktop.org>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hey,

>
> root@localhost:~# mmcli -b 2
>   --------------------------------
>   General            |  dbus path:
> /org/freedesktop/ModemManager1/Bearer/2
>                      |       type: default
>   --------------------------------
>   Status             |  connected: yes
>                      |  suspended: no
>                      |  interface: wwan0
>                      | ip timeout: 20
>   --------------------------------
>   Properties         |    roaming: allowed
>   --------------------------------
>   IPv4 configuration |     method: dhcp

This is the issue here. It shouldn't say DHCP, it should say "static",
because the WWAN network interface of all the new 5G modules are
always in raw-ip instead of 802.3, and therefore MM should fallback to
request static IP addressing instead of DHCP.

Please try to backport the following fix:
https://gitlab.freedesktop.org/mobile-broadband/ModemManager/-/commit/a8fd33ebaa80a0844c375fdb39173736d18f71cb

I really haven't spent much time backporting 5G related fixes to the
1.12 branch, because they will all be released together in 1.14 soon.

-- 
Aleksander
https://aleksander.es

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
