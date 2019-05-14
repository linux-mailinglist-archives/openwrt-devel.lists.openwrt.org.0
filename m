Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5281D0FA
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 May 2019 23:03:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KUb66wBOor2O85fdk861II3GndrE8yFGNlg+ZWS6KlU=; b=ijL
	5XP+cUQ49KyswzGfoq/VcGqyeHEdjEqnLFF/yLB5uS0YlCdoyymn527tD/YmrH6qMne/cv/Gft5al
	lKzFPc4w8sb5Tj70jHZzW+aOG8x5ybp0GYlyah1bZurhKldgcA9alM9GBRHwIyj8BUrIFbTYy+pva
	zH1n7UPAtg4V87W8aaSHAP9vtc8VWPb/j4eO9wX1lSbNLW/fgHBF/d23REZfOeA6b3GhJGfa1J5iJ
	+XK0JWu5CcmKh0nkKfewnv1oB1S8Npjl85I04NmxK1kpUsTo/Y2WeNByoPn1KHdxeVaJWLUEDnpkj
	BNCjl7al0PhIe77P9mfTVh2qGmZ9rxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQeaD-0003mA-5V; Tue, 14 May 2019 21:03:33 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQea5-0003lV-Ja
 for openwrt-devel@lists.openwrt.org; Tue, 14 May 2019 21:03:27 +0000
Received: by mail-lf1-x144.google.com with SMTP id l26so251216lfh.13
 for <openwrt-devel@lists.openwrt.org>; Tue, 14 May 2019 14:03:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=isQinGcTQ5bFOp/JKZM/gs29ngE7wT7o9x/VT1axEQk=;
 b=ZGZLOFmdXMnVkdKT9iPcqr0l9+BKQISZstYJhdm3ru7akRIMDPPtwgNxZF/CtNlfXS
 rZFyb62msmE+jzCHnDLyYP1eVRHyTzy3uwiEHIZhUrVV27Zn+PSxJh14rN4O5tVsLiH5
 WSBw8AEtiqumg/DnoMJhAHjwg7pif9LvZVJN6sTHhnJdhpAhHnq1yN6Uv8jTeqLk7YwW
 34zVb8k+kN65IRUQUBpUrNPkKRRrxglamhcnOGw3MGU3YMTkQuYPEvxCnhHxAXjoctF4
 o1nzNk4DxmNqoDV+oei4iUJsesmLjSf0GFk5YeGFBIoYjzqrYZACyyyvSLvUwgrEeQQn
 nwXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=isQinGcTQ5bFOp/JKZM/gs29ngE7wT7o9x/VT1axEQk=;
 b=HoZRNcB4/5p/A3db1rgMGFCuQvda/wuLHAkP6ongIc/UaamcasrQ74PMqtU5rbJ9Zg
 MwL8Ab8M1ArojcTjgH4lxyUU+ANLpJ4Et6xWU8f1cTFeW8z4VSqD6wIU6LG1uXIxjqxP
 u//HKtGl+BSdNV648pIfjz38mGtKcw2SHK9TM2gSgLwoAZ2UM4dZp/g9GyjkJzQdqcQU
 TBByRLnTYwILjE0i+AcwnmzH3V3YaP9NqtwyIz/c+CCUBs6mqKu1s1U0lcki2SwdttZz
 kLXU3nlxG4ORKuQYZmf9ELjcA0ZQEvQOnXidgKttnhcpi6KJeiTtNpXigW7yQJoZKe33
 01fA==
X-Gm-Message-State: APjAAAX0KFGpQRyQIEa5CSRDHws+8NM2qpgVgeN+6ATRMaWz7WAQ1qg8
 n3PH3Ofjuwio3SJHGCl6rCvDLuxMg40kDyKzuFllHnFM
X-Google-Smtp-Source: APXvYqx33bBhb0tEVhDPzHIioAnoazPWPj85Z3AxZtxe7/QSrKYIx8rOSzkBUgiKMTS1j0m+lPg0958dEEtggOyhpd0=
X-Received: by 2002:a19:96:: with SMTP id 144mr17425874lfa.29.1557867802418;
 Tue, 14 May 2019 14:03:22 -0700 (PDT)
MIME-Version: 1.0
From: Val Kulkov <val.kulkov@gmail.com>
Date: Tue, 14 May 2019 17:03:11 -0400
Message-ID: <CABFXWOCfLLjun5miiPUV6Chx2L90S+fuPWB0bVzwt=Xt43_NQA@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_140325_683346_CC2251AB 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (val.kulkov[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] fstools: block: make extroot mount
 preparation more robust
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

The patch was proposed last month by Kenneth Miller [1]. It enables
extroot on x86_64-based devices. I confirm that the patch does what it
claims. The issue with extroot on x86_64 devices is described in
FS#2231 [2].

Any possibility to see this patch in the trunk any time soon?

With this patch, one can use extroot to claim the remaining space on
/dev/sda and store data on it. Sysupgrade of a x86_64 system remains a
tricky business however. For sysupgrade, I am currently using dd to
copy OpenWrt boot partition and squashfs partitions onto the target
drive and then using dd to copy the MBR bootstrap only, without the
partition table: "dd if=/dev/sdc of=/dev/sda bs=446 count=1". This
procedure retains the partition layout on the target drive.

[1] http://lists.infradead.org/pipermail/openwrt-devel/2019-April/016654.html
[2] https://bugs.openwrt.org/index.php?do=details&task_id=2231

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
