Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9568E1550C2
	for <lists+openwrt-devel@lfdr.de>; Fri,  7 Feb 2020 03:46:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DittFVvEBh+vAr0UFsPCoD3xb1WF+bZu3SY+Ny9i+nc=; b=HWPjEu/QAixXlG
	2z4vtB3qaER9W5lv+imWV86TJaQIpYvwUUnO3e7p6rxxB3Cf7mJQK7s1kA/dxmbtvlWcwbTlSv0mz
	rWbFk/8HBL7ZQKrgCk7x1ySgk/nxUcJYXysvhry0sA3q6L+LB8o63NAllQcwCWUWgb2hgtM3OMSPD
	6xX4lBkTaRBlIRbWMj7DSjlxa5EaoMBK1uS1XEdwBs8lftrommo3oY8GO0i/fvumxmYabzxTarlP9
	F+q/SkYJaAYue+Gg63CB/4HoszkrsrTEYNqZJ8nsbgjrpjztnm8odUZq44gBjLwGQA3itWpGdkHLm
	KPaWaXouYChDkjs/RwjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iztfQ-0006Kr-HH; Fri, 07 Feb 2020 02:46:52 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iztfK-0006KY-77
 for openwrt-devel@lists.openwrt.org; Fri, 07 Feb 2020 02:46:47 +0000
Received: by mail-ot1-x344.google.com with SMTP id b18so790249otp.0
 for <openwrt-devel@lists.openwrt.org>; Thu, 06 Feb 2020 18:46:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k4UYeD+Y4a8nv7fQTi6R6qU86xKyUI2Aj6BMqZhLUwM=;
 b=raWx1xutYzF5GvKp+l72hiCiqHt+LpVws3uRRMV8n69NiNS33N+saa5y/fU6Rj6lJb
 RicpbfeIVWLqV7qkNwXtylJRvbjp6FsNj+/kzFAMT/JmEMsTwqcWxGUFtPtgtJ3Mwbnx
 0go7RGWuBS0ULFKZ9j//RnhFZS+E6Kzwk8MzJD2gAIp1QvjkYl5dVqKOlQUAv13KoGCK
 axG7J2ZUfiu7BQeOyqb1VbtWyCrGkS/t5ATKeVvOB6cRJADn0ClOhUjtABxBYdXsawYb
 G2xz16AuAHvDAfRacx1x1siubdSyBnaAe997dp1ln+hYpeS/8oDItV5x+yCiM4ooVSwz
 KP+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k4UYeD+Y4a8nv7fQTi6R6qU86xKyUI2Aj6BMqZhLUwM=;
 b=V/sNaJjuxUlRCqGDByQN8WBqoG1TPgeCBEuiltxUtKmhPzDQFLKcoxdWQ2gxNLvbIB
 FeKgIjoWthTlOJJCHWapnh/xqGHOxSQbIJNIvIKmXcimoqQM+fZ0X6MjUHvP5OL1z/xf
 5B4eJecycld2swaIwUasC/Gga+gNDSkOMh63xFXcBool+4tvHPvOG07k756+yYSTsTao
 2fDFL3BznMNh5SbQrWM2bYdzMY/rncohawhS0kzEhC1BtBkke3Rvcb/QsS7wqtqh0aEN
 +S6yEXA0X1VAEQZZ6RwskwLsd39YzHu0HQ2Afw4jVPiqXxqjkanzOejd77+a+D4zYk87
 zn2g==
X-Gm-Message-State: APjAAAXske8jkQ/C7AnCMyF0uy2JrOnaBo1vNx5eittXAbqRDoTwARBM
 tMwHfQQ+/xYN4FS1yUqNc2IrkevRZdJ/B7+3qUgkSJWP
X-Google-Smtp-Source: APXvYqxpd7jbsq9FUYrhZ6CFNY67nbLHojg93z3FtLtG3RQq6LDz7K/cj+LTrl3DKhCTQHiVy/Rps6VZXUWf3DfMo4o=
X-Received: by 2002:a05:6830:1643:: with SMTP id
 h3mr949670otr.70.1581043600219; 
 Thu, 06 Feb 2020 18:46:40 -0800 (PST)
MIME-Version: 1.0
References: <20200206181042.GA4074@makrotopia.org>
In-Reply-To: <20200206181042.GA4074@makrotopia.org>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Fri, 7 Feb 2020 10:46:29 +0800
Message-ID: <CAJsYDVKETUm09veNe_X0iP40uE29Em9DiixALjDGpZ6g3gED7A@mail.gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_184646_281426_D5267065 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH/RFC] ath79: ar933x_uart: set UART_CS_{RX,
 TX}_READY_ORIDE
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
Cc: openwrt-devel@lists.openwrt.org, Piotr Dymacz <pepe2k@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi!

On Fri, Feb 7, 2020 at 2:11 AM Daniel Golle <daniel@makrotopia.org> wrote:
>
> On AR934x this UART is usually not initialized by the bootloader
> as it is only used as a secondary serial port while the primary
> UART is a newly introduced NS16550-compatible.
> In order to make use of the ar933x-uart on AR934x without RTS/CTS
> hardware flow control, one needs to set the
> UART_CS_{RX,TX}_READY_ORIDE bits as other than on AR933x where this
> UART is used as primary/console, the bootloader on AR934x typically
> doesn't set those bits.
> Setting them explicitely on AR933x should not do any harm, so just
> set them unconditionally.
>
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
> If this works well on AR93xx there will be no need to add another
> compatible string and logic to differentiate between AR933x and AR934x
> in the UART driver. I don't have AR933x here to test, it'd be great if
> someone with that hardware can test if applying this patch breaks the
> serial console or not.

Tested on ar9331 (pisen,ts-d084) and uart console works fine.

Tested-by: Chuanhong Guo <gch981213@gmail.com>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
