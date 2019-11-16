Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E78FFF626
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 Nov 2019 00:38:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2NI5/n+m1xA/dZgMTF5J/RL2QC5YYflbCeNNbfYbyhs=; b=Tm1wJL72sDCcCc
	OzzSqh4AULjipvWjQ67cRdoCXi7eebF3f6MHlszKn9Y1VErSURpyw5I3xXGeCxB4nwsaGEtxkvU36
	qa9PkiSEvA3YjBLjjoNE2JmYrCFEz0Q1LRRlPTb8HkSGuspNtNBW/d/qSa8sVzewmfGk6xRhlhExy
	UKFqQZjrGgTreh/3CNJvelWj5PfRARZdj/jCyJLc4HouZTH+E2EFTlDYmbWo7Zxlr0cO8/n+Mky/9
	aSuAHFMdEiN3t/gRT9xykV5qOUXW/VVogRNYk/iIbPiAvWU18tQ13nV1WQt8fMtwYLsxwaQO2Xyxt
	u+e2BM3y/nU4T7rMvHZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW7da-0007Nm-Aw; Sat, 16 Nov 2019 23:37:54 +0000
Received: from mail-io1-xd2f.google.com ([2607:f8b0:4864:20::d2f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW7dL-0007JV-OK
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 23:37:41 +0000
Received: by mail-io1-xd2f.google.com with SMTP id j20so3525953ioo.11
 for <openwrt-devel@lists.openwrt.org>; Sat, 16 Nov 2019 15:37:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ayerscasa-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=VEp7TF+uA7mjbHIAi3HNvErQuk/thRjnb6izBu0Qahc=;
 b=11r+YQYZ6nStGZcuI50k+LvgJAmHT80dy15CzblFH/QuUyZ+jbiJnV07CecbUEodjH
 o/jKQRFFtUABuhL03ULQeAjhpS9qxH6pag8lB60G9ylOtKcbeVAGCfepdo/PfsOI2/zI
 2quarByngrho+f2aLARighRQboBI0NQ/NxyZJ6BbzwfBQdqj1K3qQ0XxJHyms/E1oM4T
 mDVkC8UH0EA2mlhAYq5WeFxQ25/3w2DrKV/cGpTvjd4c3BwNDjFJ7gTPLRHQiEsoYXJV
 IlDT8xZJo9oO0CV/ADG32KF7IfWp3/J0XmPe22PgazPH2Q+s604qZf47bENKfIf2mruB
 pPvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=VEp7TF+uA7mjbHIAi3HNvErQuk/thRjnb6izBu0Qahc=;
 b=nC8LWrg5DjMfFHgtYpsEf5oQzGvfFNtVSoR20TRo9/beNtaZWMfEGeyiOxz6jhOS/H
 pWHA+hppZHNr5TlC7oEEWAVJIBBBZIL3jZ6o01aEqfVL2c/fLVWfo7psn4U0P9oaIPOV
 vCQoRewUh/fnRkf58xLWluZMnUUl/RrFb3xTdL1otS35QWij7SfXEhZDA/6loIrAmCA1
 8x+riz5kHFe3DGNHhKWJ79twTLc54wj4IMHQmiRS1r/b0sgrr4b+qCVeDhDLlLBHaaVr
 LnY5prnZEYOq6tQWrt8VUIDbNmojxw+ToH6ZNf9mDN+1fSPNOFhK1ZysV8UDUEar/H/A
 Noug==
X-Gm-Message-State: APjAAAWD5GxLMnBi04D4KnDtByUuYuvY31uXqmhh8bEa0pBgF6mfBEqX
 QnkfaYf5WutBUIO45SLoAQJBuMVlh8DHm2kgxB4+UJV4
X-Google-Smtp-Source: APXvYqxh+/L6d9W9fghEvlgxxzgu2yxx4GDrC9DIqM8GBaRsJEWdfvVmxiTkXq2djxI4cv6SE4vW4u/HfAYFJjvlocU=
X-Received: by 2002:a02:1ac5:: with SMTP id 188mr7169937jai.77.1573947457653; 
 Sat, 16 Nov 2019 15:37:37 -0800 (PST)
MIME-Version: 1.0
From: Joe Ayers <joe@ayerscasa.com>
Date: Sat, 16 Nov 2019 15:37:28 -0800
Message-ID: <CAALvt2OQ-LCg=C86GkcgZkw4V-deTbxVYGsxte9iyO9E3BX_cg@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_153739_848673_876DE01C 
X-CRM114-Status: UNSURE (   2.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2f listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] nanostation-m-xw ath79 missing wlan sysfs pci
 entries
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
Cc: ynezz@true.cz, Andrew Cameron <apcameron@softhome.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On nanostation-m-xw ath79 target in master and 19.07,
"/sys/devices/pci0000:00"  does not exist.  Unable to access vendor
and device IDs, and no longer reported in "iwinfo <dev> info"

This is working on ath79 for 'nanostation-m'.   I'm guessing the pcie
entry in dts needs more definition on the nanostation-m-xw?

Joe AE6XE

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
