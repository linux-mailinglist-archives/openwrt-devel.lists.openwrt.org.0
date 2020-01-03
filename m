Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1229112F88A
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Jan 2020 13:55:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=61FwKFjKWxWYBCMgdMcvuOgpxMNShUey3RPKku/7GZo=; b=QVw/6Ajh83Zel7
	w/y5wgG4QxzaSDo9sbzeiqMNe3nhHS3t7wFMmkB8FAI3EkyF35MIhihu3IjchfwPXd0obcutGbblf
	qKMiU9knWFU46Bsy6M+Ur7OvvfETQ6CPJC1ORlDywhRbBpUn0ONRTYf3xxdGZy/Jhz4jE3ulHTz5C
	ojRtJVdYzZWWeQWSYC0RfJ3MjoQdyuiI27oDquzH8+SQ6Wam81ptrsuQnrJRaTWfuEYyEaaZKF8vN
	EXUkT/w0VQMhnH9Ruqnz0UOVY8kDmh91vc7n/Dwi50dYOoI9Rt1EorHZ0OaFk96jaOoTVbrEFdd4g
	1lZ+qtylO+WFurODVN9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inMUR-0000Ua-R4; Fri, 03 Jan 2020 12:55:43 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inMUH-0000U2-BR
 for openwrt-devel@lists.openwrt.org; Fri, 03 Jan 2020 12:55:35 +0000
Received: by mail-lj1-x22e.google.com with SMTP id r19so43788960ljg.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 03 Jan 2020 04:55:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=abnzi7d273AoGZwP1HvNyn5uX7JYJ/rIDg6JVq0nagc=;
 b=mBXSI6PinJC2MaNxF8FU0EkOoPug3sgHP9lVdFKqqlnTIjGxiuwhxAGTVbFL3HSkw6
 X/LdzgR9BX8J2Nw0j9u+aaMIIcnexVnVrkB2IOcz8cKzdE6j+ti9hAZH6uj+7EgsdoN/
 qZWlAw53/BdaKskq+QH9legyUKBVqyjlfpDAfNi5wXTVMtMwpETmqd3CEZo5uoeQHuEP
 KJCIXgEe4uCblrdJlCg/6U1FI3cof6jGrra/PU+uoMAeLW4jZIHFGPXJdDXDvwkchC57
 93uiQmluyRBsXc5SRQBQHDnE5+o4qwCCn/sXlmmuozpX2RYdLRS0jfnHHWsVGEFd2ayj
 FMjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=abnzi7d273AoGZwP1HvNyn5uX7JYJ/rIDg6JVq0nagc=;
 b=mGbJv6butq5ia7aHxcFj5p8KK603mb0EXwtgKsMfb7JbNhvy5+co4GQUytdxuSBCRW
 pTEMMgsm1KabxRPUb6UtHlU75DUqKacDhOIg0HRwmuMYMZUGVwwMYOVCVCx17XS7NZpY
 xUVqDEluixhTpAN4urC9uJuQa1LCAVdY3Qgvbu1bPQouMHzfpvGUEIT/FgXUGz6N94v/
 p5XoadAf1B8aQoGZ9PL1aVCtln48S45Rz1SmmZQIYjUH9TOh/OrrT9zeG0szB/zDj0Eq
 AoIhfJiSE3ureLZSFvZIYamDnpDOQszJ12VMefJzcAUYL/GvBkBeG6tg7s4umnsaLaw4
 pTTA==
X-Gm-Message-State: APjAAAUXKrmIBP1IIDLn2czopDemAoBhxiY7RykL10OHJTouVL/XEnpG
 +r9B4vZwT8rNuds84LMHMeA=
X-Google-Smtp-Source: APXvYqzYS+q5ndKhk7Wi2B4L21iIKXgUrR51/8clXP0af0qWKLF+EsC372RxxWEGC+oHGUhREsSyUQ==
X-Received: by 2002:a2e:2201:: with SMTP id i1mr50517488lji.110.1578056128769; 
 Fri, 03 Jan 2020 04:55:28 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id y14sm24435218ljk.46.2020.01.03.04.55.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 04:55:28 -0800 (PST)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 003CtPYE004253; Fri, 3 Jan 2020 15:55:26 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id 003CtOGC004252;
 Fri, 3 Jan 2020 15:55:24 +0300
Date: Fri, 3 Jan 2020 15:55:24 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: mail@adrianschmutzler.de
Message-ID: <20200103125524.GR11377@home.paul.comp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181206152536.38850-2-jonathan@navigue.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_045533_418567_314E86DC 
X-CRM114-Status: UNSURE (   6.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22e listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Replying to old mails (Was: Re:  [OpenWrt-Devel, v5,
 2/2] Allow sysupgrade restore on ER)
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

Hi,

Somewhat related,

On Fri, Jan 03, 2020 at 01:34:43PM +0100, mail@adrianschmutzler.de wrote:
> I do not have the old e-mails for those changes, thus I cannot respond correctly.

One can do

wget http://lists.infradead.org/mailman/private/openwrt-devel.mbox/openwrt-devel.mbox?username=<youremail>\&password=<yourpassword>

to retrieve full mailing list archive in mailbox format and use
his/her favourite MUA to comfortably reply to any given mail.

Also, the patchwork shows Message ID clearly, so if your MUA allows
setting of In-Reply-To header you can do that even without using the
mailing list archive (I demonstrate this in this very mail, using Mutt
and :set edit_headers option).

> Still, both (very old) patches miss commit message and, more importantly, Signed-off, so I will mark them as "Changes Requested".

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
