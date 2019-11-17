Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE29CFFACC
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 Nov 2019 17:52:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H2a3nw+eT5IwCoxxLgiGaIk+PlSPzgGGeHvNSAJQ8i4=; b=YYj5bJdEzgeNqX
	B/BEj4gFSdIoW9WSxr0jlAEKHut2CusuDlpl979rY+7c3hXX4h//YCu7MvsiygZFqdqsISfO8kR7c
	j8AtONcwFuH2pEYrCTRtwFyNGBgxJ9ShmEw2UAd9U4BkO+PXwyHiTUNjPvmXcY6VLCTuJmyVrRUtI
	SeD+RLWqvYba5M+OPOifC6jRtiY/2vuA65iHjQOZioRtiHjmNH4LrSf7+Hk/LL3M092hGdf/iw+rj
	f3rUg1DoQnuqGr3rzgi58f1NPsqWLY+p01pbN0FaNGpUNDpzKKv1xLVxLNf9KjkgVjEI1Z91GR/jW
	KkxXm4C3jbJaDYJqKHvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWNmZ-0007XR-Oy; Sun, 17 Nov 2019 16:52:15 +0000
Received: from out-20.smtp.github.com ([192.30.252.203])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWNmT-0007Wv-B2
 for lede-dev@lists.infradead.org; Sun, 17 Nov 2019 16:52:11 +0000
Date: Sun, 17 Nov 2019 08:52:04 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1574009524;
 bh=rBjgtHqcLlkiLZYRqHhyul6v4plOEGlqEDPEScK7Qa8=;
 h=Date:From:To:Subject:From;
 b=nYnKuMt2nc1Hvkanz///AN1xfiQuyqThF+tI0OmjhVnOqdII+2K2vbiheMoHNYRIO
 2DZNcJnQ1USzHN8bXceoxL0oT+8u3Vr+XWPq2Wrre8zurUQhIZPBWXXFsNsyT81CIh
 lRqufk5NJEdOoAUa9MP9XfxRxZziFAMdXvesNduE=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/13178b-335a5b@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_085209_450269_0E34E735 
X-CRM114-Status: UNSURE (   2.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.203 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 335a5b: This week's
 update
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

  Branch: refs/heads/master
  Home:   https://github.com/sdwalker/sdwalker.github.io
  Commit: 335a5b266fa6e549e2173c6d6d02359f183df84e
      https://github.com/sdwalker/sdwalker.github.io/commit/335a5b266fa6e549e2173c6d6d02359f183df84e
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-11-17 (Sun, 17 Nov 2019)

  Changed paths:
    M uscan/index-18.06.html
    M uscan/index-19.07.html
    M uscan/index.html

  Log Message:
  -----------
  This week's update



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
