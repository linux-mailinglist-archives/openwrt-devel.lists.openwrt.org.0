Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31EA810C2E0
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 Nov 2019 04:33:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=F2JqptrGSe1AWGWleK2sVxjpXe30lH4Pp6Tr8rribk8=; b=GRO
	Cs0I4ZJ0Ixlu44u+AbyX21pswSVwZ+57Yd3vehHAd4kobAOItoCunnHJeOMMn/2kgBGYe8ofS4qWt
	SBxZEsL/ryzZk7WgO6yJdOba8SsFf5zxD4f7jGwjR2u/stmhGqgWx6x4c0X6bq5jC9RUpNsYH7UAM
	uSaSeeZFsHt8cO0+XAASH2sFyeEDeB744l2fmHwUEWn+OWksvrueY2jPo3Ldx4RYq8wWzc9JDREs/
	5GZxNDsZwET0ZkKd7bgDF7KcRZ0ylBT4BrqSbPgaMwPqaLagALzzCZe7Y2RYK9XKntWeoXMtnhUeU
	K7ruSo5y+1onfqEP0+kLjoUjVpfINbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaAYi-0002tK-2k; Thu, 28 Nov 2019 03:33:36 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaAYZ-0002sx-Ir
 for openwrt-devel@lists.openwrt.org; Thu, 28 Nov 2019 03:33:29 +0000
Received: by mail-lf1-x132.google.com with SMTP id l14so18836713lfh.10
 for <openwrt-devel@lists.openwrt.org>; Wed, 27 Nov 2019 19:33:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=eoB7Cf7YvilYAGsU6DP2AS4mxB5rAe5QdbOxxg/OPl0=;
 b=kbIs/vEysRdPZpgMlCePbQKldscUnCvewFiHC0ppwH1TPHC2m2uCC6fvOeAiI2+0Gp
 qNR5A0nXRceEJEnyo8O09S2PdUqNN4sU6O1K/Z+vuisgg2DbOVOH+ApRoaQ34qshhIsi
 6jtVcCEJX14xmGEw8aZq9QRm6c/rOhSNKnqtmbfjCW1CQMGOn8D8VLMboPIylwqfiqu1
 b2O3SrqZSgYNh99SnfsPpl0MOMAOfa7heqCJvU4evf/9x5dwKHVlpQ7H2+KigtXCoVc4
 9gedf90ugRgFFdajyR0caNYdAOxEge39uOigNVfBdsV+r1zjJvfoHLJiWXUc5BZW6iQI
 IrHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=eoB7Cf7YvilYAGsU6DP2AS4mxB5rAe5QdbOxxg/OPl0=;
 b=XVywnHfd2GJgCp6f9Kg2SfNHcJhuqMQaLUMJfqAQ9Hqfzxz3KOA9KnTDaO4CNWJ0GL
 Cn1jMqWlq/+eSIOirZhsaH65hVbEfVmUrN6z4LxjAQ9jucNQKK69MO92gGXFUpCSTbIq
 BLx+r0IYDgI7zEHvy7bt8kR4LHVKT9S9vPGTRfU5tqnwXMHbI4y8wyiJQE6UaHeNoptB
 jZGF0olgP7fvRjEKAZ+pRL0x9yYRQ5FxthtS3SqdRTISn3dBqddcxoztoFntDdQEGHUX
 Vp/RMgqfDVUP307MhzbRAPHufeTEYn+chyeX6s/n7fjf8GR6rsK+TfNtzRR0SHV7NPMo
 KBsw==
X-Gm-Message-State: APjAAAWAbTIB28vUQIY+nBr0fqRtOABkfZSgTABSVI1RnZFLxKaqyt4R
 AduRADHImPa1mm8SMD1zU09fYzRMLXVGpWnuXWwHGfoX
X-Google-Smtp-Source: APXvYqwHu+32Xzz1gdjqLhYCSC8v9v+C23wL4KtAE4RGqxUpz2z4T4x+FiTJd+lDs8Hehtp970xFDknEqTB6J6ybXd8=
X-Received: by 2002:a19:6b04:: with SMTP id d4mr31235678lfa.10.1574912004695; 
 Wed, 27 Nov 2019 19:33:24 -0800 (PST)
MIME-Version: 1.0
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Thu, 28 Nov 2019 11:33:13 +0800
Message-ID: <CAECwjAh__fE=qWmXtyTFUzTwSHGy_0v5MC4n=VJ6qVc=Hq0w5Q@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_193327_625019_8E1799FA 
X-CRM114-Status: UNSURE (   6.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:132 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Running k3s on OpenWrt
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

Hi list,

I am sending this email in case it's also interesting to someone in
the community, and to also avoid it bit rotting in my repo [1]

A few months ago, I started working on bringing up k3s on OpenWrt.  I
managed to have a small k8s cluster with nodes running centos and
openwrt.  Likely other linux distros will also do, but I didn't test
combination of different architectures yet.

K3s is on its own a k8s distribution.  It provides a single packaged
binary for amd64, arm64, armhf.  If I understand it right, the binary
is supposed to be as userland-dependency-free as possible, with
dependencies only on the kernel.

One thing worth noting is that the openwrt package is NOT official,
neither from OpenWrt nor k3s upstream project.  It packages binary
executables distributed by k3s upstream project which is generally
frowned upon if sources are available.

The other thing is that k3s (or k8s) requires quite a few kernel
features to run, some of them only available as builtin (compared to
kmod).  This means you will likely to build your own image to use it.
The required features as of k3s 1.0.0 are recorded as well and
available as a default off config symbol CONFIG_k3s_KERNEL [2]

 [1] https://github.com/yousong/waller/tree/master/k3s
 [2] https://github.com/yousong/waller/blob/c3ee00451ce12e869277bbd73b08652882c52010/k3s/Makefile#L69-L79

Happy hacking,
                yousong

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
