Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B41B12CC43
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 05:15:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3vyXLw96zjG9vuPOiem0/2/DeLDZP6sbdOky5rzV/hw=; b=IWwaxY14zMWeYylmcFoHwVPgAn
	TJw+jgAR+gbKUnUyF55/kS3WhTBdYPCB+KXtv1ta8Y+0i2sbf2v13SfA/iez/JWQTPLHVlQypb/NT
	XqgoKwcGWdEFkbDO+R1Y0SFYqOj7I//Rlp39fFvW49evdIDiIudV6dswSDIBg1g+Aei4r2o8x235Z
	x1GC+nF39LFH+wfp4e3dFCx6GFUxKY6jKJjLPyoDStYIvxc8CLdjDJb71iNxw/PR45LPySg26t8Ie
	hg9m8B8mmAHc2AZqwIMy3CXGvMAmASnX03imiOP3iAmNCrPcZ282ShuxZpq5V5Oqe+AHwwKQq99Ew
	1yJcSfUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilmSc-0007aa-53; Mon, 30 Dec 2019 04:15:18 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilmSU-0006Nv-Ag
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 04:15:12 +0000
X-Originating-IP: 85.214.243.122
Received: from erker.lan (megumi.opennet-initiative.de [85.214.243.122])
 (Authenticated sender: lists@sumpfralle.de)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 9E2761C0002
 for <openwrt-devel@lists.openwrt.org>; Mon, 30 Dec 2019 04:14:53 +0000 (UTC)
Date: Mon, 30 Dec 2019 05:14:52 +0100
From: Lars Kruse <lists@sumpfralle.de>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20191230051452.157fc811@erker.lan>
In-Reply-To: <20191230034251.21873-4-rosenp@gmail.com>
References: <20191230034251.21873-1-rosenp@gmail.com>
 <20191230034251.21873-4-rosenp@gmail.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_201510_507434_0FFE9B07 
X-CRM114-Status: UNSURE (   4.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 4/4] scripts/gen_image_generic.sh: use
 /bin/sh
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Rosen,


Am Sun, 29 Dec 2019 19:42:51 -0800
schrieb Rosen Penev <rosenp@gmail.com>:

> This has nothing bash specific.
> [..]
> -#!/usr/bin/env bash
> +#!/bin/bash

I think, the commit message indicates that you switched from bash to sh.
Or did I misread it somehow?

Cheers,
Lars

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
