Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 674FC652D7
	for <lists+openwrt-devel@lfdr.de>; Thu, 11 Jul 2019 10:09:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J9Pt8H6kW0OSetHBmjISY+IFz9e65X5znXFVJu65xUc=; b=TGnYWDy3P5nFaH
	Mlx3HTUJfeacsc7S6oULg8jWCDse6fdFSj1AyoAp06QdEck+YhRzLFK830aDblcR3emnSiyghvkd4
	hUPlaGNt45sl1e0dN630ZRBYyEh2tafdawQlNCbF5jbImQz/rTg9dUwG7aj25L/3flZAtqgRHTo6I
	q31FjYBSBK8KuZBAdgnGff2KzYOEg2rXp6ymijLd70CC0nr+Ss1QPYf2fyt010METivSBcwGhgPbe
	UqInpUgGSwgzkAmIAENRK08HVU9+gEcZPnf1X8yyv0nA+D9Iua47k/lOOt+rn3bY5AIl2Mujc0JzH
	jB27E8mMRPI2tpFTU6aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlU8w-000311-5Z; Thu, 11 Jul 2019 08:09:30 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlU8d-0002pQ-4t
 for openwrt-devel@lists.openwrt.org; Thu, 11 Jul 2019 08:09:12 +0000
Received: by mail-wr1-x442.google.com with SMTP id p13so5172374wru.10
 for <openwrt-devel@lists.openwrt.org>; Thu, 11 Jul 2019 01:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version;
 bh=zeT7PVxd3IGnp0a7PYu22cy8sWn8pG6pz/Fq4nh+a3w=;
 b=atwbbU8nSoBti3hHofWGYHQvoG52n5bLCQGmWWMtnHKjp4wHlbr4vcoAZEggPoQLDU
 lqTM9EsQxFZmEEU/Ft2E04TTK4WD8CXHThdTsxxnqm1fYwizHLdRqLAsygo3AuVP0Qo1
 MiIuTGyHCYTsFlup716HmvOV2sYF3wyhUui/coZxYJYBIBVjPWgFIn35HO81jIQNKWuy
 sSoMPyGyRizZwU3WOK9EGnJdMPTyQOPgXhFYsteNOTRpqeUPsz9QQ5GUz9r8ps16MS30
 XHYgxGMlCkeT6gg8M/ZfyymE8A8xRzEu8xLT3jxh3BgHoQuAuya3dDxJRGH3GfmdYjKy
 z6MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
 bh=zeT7PVxd3IGnp0a7PYu22cy8sWn8pG6pz/Fq4nh+a3w=;
 b=D3hcz0wnRAv8CFNlk4Pp5ECH8IyxnUpPEd0b6O+tLOHv2xGduCdqtjSu+yF/wygvRs
 ZXOpseSjfwlQQ6xtJIjPwYjTQ9qmJYzD0vNkUIKdwxKQwE/TwjXxsKN/pbcACjTa0F9C
 eh8RXXF3wQuDhec0nspRi12JNripDHMz2gpWBAh0hdLxH+SmCAQysXtsTVb/oMvj6jkO
 eZ4jmOwNIYb7AH/UySF4iIzQnOuoGoTdxRSdXbxaa/Vcy/Pn9KlkodYw44pejfYA/OHU
 p+/pucd1iaxqVIP1pgJAOk+voS5K/wptJxclQCNAMIyYRSKSUvYAMRISI+/iy7E+XJcX
 jLLA==
X-Gm-Message-State: APjAAAU1QU8CbU3qLcV2K9GceWMHfg1kWEdfZAWUTxZ8Wnd71JAhWUBV
 Rv9SyK6QUmpG89/KUz36E2s=
X-Google-Smtp-Source: APXvYqz+8EK5s0MznTfS6cbxd5C1q17P3W7RroSHIE/MXiix+xTWS9ZJXlKC4uCFnAQlZgUVWGMpSQ==
X-Received: by 2002:adf:c594:: with SMTP id m20mr3539262wrg.126.1562832548591; 
 Thu, 11 Jul 2019 01:09:08 -0700 (PDT)
Received: from localhost.localdomain
 (host191-253-dynamic.14-87-r.retail.telecomitalia.it. [87.14.253.191])
 by smtp.gmail.com with ESMTPSA id r14sm4426759wrx.57.2019.07.11.01.09.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 01:09:07 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.localdomain (OpenSMTPD) with ESMTP id 1e0f7e46;
 Thu, 11 Jul 2019 08:09:05 +0000 (UTC)
Date: Thu, 11 Jul 2019 10:09:05 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: openwrt-devel@lists.openwrt.org
Message-ID: <alpine.LNX.2.21.99999.352.1907111003570.4167@localhost.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_010911_222532_12E19098 
X-CRM114-Status: UNSURE (   5.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
Subject: [OpenWrt-Devel] Announcing AGH 0.01
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi!
I am announcing AGH: a 3G/4G connection manager (via ModemManager) / XMPP control agent, specifically designed for OpenWrt.

Some of it's features:
Documentation: AGH is documented enough to get you to a good start;
Modem handling:
- uses ModemManager, so your QMI/MBIM/cdc_ether based modem will be used at it's max performance
- bearer profiles: one or more bearers can be configured; AGH will keep them connected
- supports more than one modem at time: each modem has it's connection settings
- supports matching predefined connection profiles based on operator id
- supports configuring / setting modem preferred modes
- SMS messaging rudimentary support for sending and receiving messages, or deleting all of them

XMPP: allows complete control of the system over XMPP
- ubus: can perform ubus calls, listen for events
- ubox logd: can intercept log messages connecting to a file descriptor as provided by logd

System: AGH is designed to integrate seamslessly with the rest of the system.
An init.d script is provided.
AGH supports running in a jail via ujail.
Basic OpenWrt packaging support is provided.

License: it's free software, distributed under the GPL Version 2 or, at your option, any later version.

================================================================================

I put all of my effort in making AGH a robust and useful software. Nevertheless, I am a beginner, so I need your help guys! :)
I would like so much for AGH becoming truly robust, useful and excellent software.
Any help is greatly welcome: with code scrutiny, patches, new functionalities, and project administration (e.g.: managing pull requests in github and so on).
Any ideas in how to shape the project is also welcome - so feel free to express yourself!

Grab your AGH right now at:
https://github.com/mrkiko/agh

Thanks!!

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
