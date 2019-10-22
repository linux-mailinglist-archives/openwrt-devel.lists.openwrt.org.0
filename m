Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6373DE00DC
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 11:37:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From:Date:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=S4J5QYWl83JCKipjEG+PszSB9U5u7oabjBip1/6CFUw=; b=B/sNovw/Iexx8Xg3CI+PVC8+/u
	IuNv+TWbwDgTPuyC+Rlt+91qhlwYQqOwo83QX/cl38IcH9cElDKyZmSQpzjdgK+Vfnvz/Ld2vrcSj
	1I1qyD25SI2zJyOXZFELQkGrRyOuCGgaIqrftNxRo8idywK//0rdpWJrOz8p+jlnP1HHfxjNSredO
	uJk8141l/7lJV+dziky9P+LMDQfDVQUgIiBDvplH8ZBndFTCjrat630jZPVq9xWTRytxlCrMkGehQ
	1nhjtVpwme1vBb8VXqcH4UKyxhN6UrR999zavqdLAg5nnqMAP+puE2OD5/5jonhWhB6R4WEwnDCLy
	L26RBErg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMqbH-00029E-PI; Tue, 22 Oct 2019 09:37:11 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMqb7-00027q-Ov
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 09:37:03 +0000
Received: by mail-wm1-x341.google.com with SMTP id q13so6344659wmj.0
 for <openwrt-devel@lists.openwrt.org>; Tue, 22 Oct 2019 02:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=hsmYgbHRB52GTSZ4fhp3Gs16JCcNpV3llhYlOWyrgIY=;
 b=mO1PR/Gq7qxcpCYGR8ScoJG08vPB1R8BX8MiPHBeyQfRr+runq7taxwTUPyB8itWuI
 MOm5Waj8OiPlx9i5ZGOe+OMRND89s89kzUknLsWtl3TwX9qBQ8QXCYhQqInMuamfbnIL
 AHctZb6CDrgBg+bmQRcrryIHfhIALMw0X2BwJ7rQKtztIEFKJ03OamqVBCgIKCCKF17p
 6JG9HSEs1T2hdjJFosGRaq+5lu2nqhrWU4z0p4XOsAONOwAe6uy5ZPKNL3FLaO9xAdSB
 cK6SSwgSEpaav2iACT2eiTF2DyBfMuG9Ps0Pe4lcnXLR2x4G4n4TzSIXTpwPGtgSmkSO
 F90Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version;
 bh=hsmYgbHRB52GTSZ4fhp3Gs16JCcNpV3llhYlOWyrgIY=;
 b=Ix4VmwuZYg2fBkaE8i4w8syX1OnsLVW6aqIQ34pAa2EEvKe/vqticmCtf0aY55JsFu
 DQmdUhgaPQDGzeO368XHdZwYTfiJHmqtwXbyDMlPFuKr06Ye/82WBOC31NzEu/a/kf8S
 Pt84PvWH/5Pwj4vIloONuypIoC0lf0chJ9xRhV55h02+FDVjD/8BiTPhH9Dvg5FE3L1a
 POYJwb00iP0JtxD4LEPGfaaDrWNoXSpghcRJ1bkL5bCBF1BhWQGIND3pYMecgqvDCmNs
 5vxbM02xKlNayka7sxGh8KdR/7eLuqkLi5bKOyfZX/O6bf9KfAS00XZ/5obJ2D0Q75ez
 XtVw==
X-Gm-Message-State: APjAAAUeqHqmemQj4V8RFkgB9acaKH1L8lu/t824WieZ5P+/lFxbCvya
 T2yXPLx8EyYI/Pe/pn6KXIY=
X-Google-Smtp-Source: APXvYqxjBU1bHnJ/I/JDBxtdrZYPMYlUUVikyO/mvF8HgJeWcgJJghOlGUpfAMGosZjz7JNbPZpqgA==
X-Received: by 2002:a1c:c90f:: with SMTP id f15mr2173410wmb.125.1571737019714; 
 Tue, 22 Oct 2019 02:36:59 -0700 (PDT)
Received: from mStation (host62-187-dynamic.56-82-r.retail.telecomitalia.it.
 [82.56.187.62])
 by smtp.gmail.com with ESMTPSA id d11sm20555345wrf.80.2019.10.22.02.36.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 02:36:59 -0700 (PDT)
Date: Tue, 22 Oct 2019 11:36:57 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@mStation.localdomain
To: "ModemManager (development)" <modemmanager-devel@lists.freedesktop.org>
Message-ID: <alpine.LNX.2.21.99999.353.1910221135470.334258@mStation.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_023701_840230_DBF72F3D 
X-CRM114-Status: UNSURE (   4.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.1 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
Subject: [OpenWrt-Devel] Announcing AGH 0.02
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
Cc: irman.ghaffar@gmail.com, openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi!
I am announcing AGH 0.02: a 3G/4G connection manager (via ModemManager) / XMPP control agent (via libstrophe), specifically designed for OpenWrt.

Some of it's features:
Documentation: AGH is documented enough to get you to a good start;
Modem handling:
- uses ModemManager, so your QMI/MBIM/cdc_ether based modem will be used at it's max performance
- bearer profiles: one or more bearers can be configured; AGH will keep them connected
- supports more than one modem at time: each modem has it's connection settings
- supports matching predefined connection profiles based on operator id
- supports configuring / setting modem preferred modes
- very basic SMS messaging support for sending and receiving messages, or deleting them all :)

XMPP: allows complete control of the system over XMPP
- ubus: can perform ubus calls, listen for events
- ubox logd: can intercept log messages connecting to a file descriptor as provided by logd

System: AGH is designed to integrate seamslessly with the rest of the system.
An init.d script is provided.
AGH supports running in a jail via ujail.
Basic OpenWrt packaging support is provided.

License: it's free software, distributed under the GPL Version 2 or, at your option, any later version.

================================================================================

Changes in version 0.02:
all of the bugs found by the Coverity static analysis tools have been fixed.
Great thanks to Marks for his help!

================================================================================

I put all of my effort in making AGH a robust and useful software. Nevertheless, I am a beginner, so I need your help guys! :)
I would like so much for AGH becoming truly robust, useful and excellent software.
Any help is greatly welcome: with code scrutiny, patches, new functionalities, and project administration (e.g.: managing pull requests in GitHub and so on).
Any ideas in how to shape the project is also welcome - so feel free to express yourself!

Grab your AGH right now at:
https://github.com/mrkiko/agh

Thanks!!

Enrico


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
