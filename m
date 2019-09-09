Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF73BADCDD
	for <lists+openwrt-devel@lfdr.de>; Mon,  9 Sep 2019 18:14:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QOWuHa+LnYBurVrY9ZhN06I+3qIxFcOLTjJ3kx2hga4=; b=l/T
	f65xUDmSWQql8j0IDGJG3ylxMQCjnLEW2Ky5X0n1/2oTFf3kUFAsvQSmwspuR3DFEJ8Xy/SUXPapw
	C3wwb3FdSnIuXQF+4KdWhjxJJdSYY2zbwCXyE+4YJpv7obVSw1CWpuveN1PWU3SGhf3Y47YWdeWn2
	VARPJX7bSyApK4AZzI1kI9CrpD1bUc5xHMiWVTFzbeBCcEUg++rqd0clYT6L88yUC6xUmCKdiVHe/
	eunn0skbwU7tCywLGx12BpPYfPw0wb2Ce2ZJEXO10/F/pdEmCPNy0pF4URSX0f15ImV7qbk861HaB
	GHtgLldoz/p26jwHruP+GT8OyN9lO2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7MJY-0004rU-3a; Mon, 09 Sep 2019 16:14:52 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7MJM-0004qu-M3
 for openwrt-devel@lists.openwrt.org; Mon, 09 Sep 2019 16:14:41 +0000
Received: by mail-lj1-x234.google.com with SMTP id u14so13319451ljj.11
 for <openwrt-devel@lists.openwrt.org>; Mon, 09 Sep 2019 09:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=LR+ho0ncI8/f5v2tWfHx9vf40gReioRHcK2l3cUv/o4=;
 b=JAyWcU3WWktXTazRp/livkBalQBQQJ8ae0wG6oqkZd+7IT8y4JkHKQd+Z7/X/AhBlj
 qx1UcsaoYtNFolYGYVuFbODO7lgrGarTTHJhwsUwp3BkzfMcf0qLOaE7uNMnV3cDGVxp
 pCGYxh01c5W+vMvQZlDf6JOiGQC93FoOIMMXpADz4MlK6LMcsEOkvWZei34P+USQIAH4
 qCQZZAAzY/gW7NYOF0Ufscw/9dIeDq/TfZrsg5iKWMRalEDSWJaCIJlrHlt5uRmq9TnI
 CcSGuRNguWSSH/SGq73lyyJ1rtapd755o1ECUhIM7rVP1sZ9ie64IjzwZDwleEtigQMS
 pepQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=LR+ho0ncI8/f5v2tWfHx9vf40gReioRHcK2l3cUv/o4=;
 b=hV8PYC/hxkA1uAnLtcVk0+nVvftsYP3Abp/kr0boOFiitWPF+VhktguTzG8oGVLLWJ
 VuOJ2UPgiM6yp/yVbyC9AClg2v5Vr5zOZUj0POxWbGuLtMLXJ1vr/aP9pOSIW1nNQ7eP
 NrPHlJqkjavSuuv692SCMd11rJG2B4Cny9KloQoD3lXlS8beE9iZDIfjtmSOhOkRpjaY
 Qkef+nWHb0Xwje5ghc1K9nauT+oxCz3S4j1ag3jxXDdd/ur/SujXgxdAanNqy3wu9EOX
 tSClwxsJzYNN/1vCQ7Cq/EMPx8vdToy5l3QROuVi9GUaOXMpGGeVXo7ZyWVw/WFF2mNs
 FIzA==
X-Gm-Message-State: APjAAAUQ/qmDwkRsw9ookrFhu8d86f0AIsz9sVKnvMIr1NHRc0qInyZY
 z9S1SsqcgRtQ/e8GISS90j8usLSz1WjbSnCBYJ79/mCi
X-Google-Smtp-Source: APXvYqwq8XFEVFQON3JreRgheD7lJFkApDiB4unJ1XJsyf0YXeony/mYgqVDrSOxNiq3IG3SR8XhCmQh07y+NOnLrPc=
X-Received: by 2002:a2e:86c5:: with SMTP id n5mr9960070ljj.153.1568045678278; 
 Mon, 09 Sep 2019 09:14:38 -0700 (PDT)
MIME-Version: 1.0
From: sven falempin <sven.falempin@gmail.com>
Date: Mon, 9 Sep 2019 12:14:10 -0400
Message-ID: <CA++fYEgurMzJW8BX=ebpyG9jg9iW7kaJ2rd9RMxv3-RCE9ku+Q@mail.gmail.com>
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_091440_748023_122768A2 
X-CRM114-Status: UNSURE (   4.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:234 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sven.falempin[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] Mouting rootfs overlay help
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

Dear reader ,

My Updated image cannot auto mount the overlay for some reason.
[   10.587382] mount_root: no usable overlay filesystem found, using
tmpfs overlay

Nevertheless the overall detection seems fine :

[    1.728207] mtd: device 9 (rootfs) set to be root filesystem
[    1.732987] 1 squashfs-split partitions found on MTD device rootfs
[    1.738420] 0x000000c00000-0x000001b80000 : "rootfs_data"

# tail -1 /proc/mtd
mtd10: 00f80000 00010000 "rootfs_data"


I probably did not initiliaze the rootfs_data partition.

Can someone point out where it is explained or how to test that ?

Best.

--
--
---------------------------------------------------------------------------------------------------------------------
Knowing is not enough; we must apply. Willing is not enough; we must do

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
