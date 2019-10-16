Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD487D99A2
	for <lists+openwrt-devel@lfdr.de>; Wed, 16 Oct 2019 20:59:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9Ix96JDtQA5nbDp0GsG6ApeQ0G/x4zl3t6vAjaDz7xY=; b=QDs
	oJw7Xm+rR24t+86ea6OKNDXHbNCfEKe3Tw9RnmkC2jD9lLf2jV/UDp2XWPxt2fAO9dyMHjE5EIOxY
	UVoCJUJjebenCIyGAplHbwsJw8qZrmxqfGBKsnydbdoVoibBVDGkmamr4OxGuKPk8SStTuNQGjZ8i
	07YAxC2YeFN6Eha2YfVXdHs2HMNC1V79v5K3ILkZhy8jP2O+EjZJSMJo/7UZvJZ5PYqd2qQKm3e5f
	/0VGAYklSJfy2M397n0ltNP6ioqHA7kjv6qhZ8Jzi03idY2n8mR3A2f573DD5n72N50xPKqHbzM5J
	XWzpAKljQ4N23GgmbUfQgKF0fH3DZqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKoWX-0002sQ-7U; Wed, 16 Oct 2019 18:59:53 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKoWD-0002ru-KD
 for openwrt-devel@lists.openwrt.org; Wed, 16 Oct 2019 18:59:34 +0000
Received: by mail-oi1-x236.google.com with SMTP id k20so20988480oih.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 16 Oct 2019 11:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=yQT60Y2wle/29VzpqH6oTwo/eE4hKGg5FyaWfDyheIU=;
 b=jtHvauaCjUbZCqsTTkZFYn8T9ebH+DWB1Yb8WaJ+VpYSOUzb8W4/qUyvWpE4Kecn9o
 yYqM1wmC/FpX6PUWXDNbD5VaiYI9lNVM2uO3GGW5mnfz1zlr+n6bP/cZF4aQzU5x42BC
 5JqOeeVn7pVqAsKomlFwYK5kLIrPNeVJA5GL9dWWgcWc4k1O8LRqzP86bmXJ5+Ua2FZI
 MrlltNz5Dpkx15lb4sNgIJu7UZlZcMVMADfq7sbAx8S0sW835e7gkTGJAbKtyoBGZfgr
 IeEtXdU5f8dq0Ob8Rb+P1EScGhKrY75Gcr0r2iUcbxdhmcHvyRPP40/AUCHuUzF9O2N5
 HJOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=yQT60Y2wle/29VzpqH6oTwo/eE4hKGg5FyaWfDyheIU=;
 b=BlcG+F/AnMFBnCctJUX1diASTGqiPQ+o1mi8s2WiGiRGc+D8JFz+qYzs9yPmuiZDrL
 tzdDOhD5WX/LKdoZeOVaDa1HgZh3gXzbulMfTXkt8Klca69oS58MspKe2iNURCtwMk0J
 VDL5UDQPovptjpnXMJD5w1G8lsUawo6YvwP2VJIvwOQCIMBrNoLyoN2NbvQFi3RD+WsD
 qe3y0iVKsH8mI44DahK1cDTjxfRcrKXzm/2z060/nyuFE0BVSHt8OTl5gm4rk8ke4U/Y
 ylw22HwOrRB5YePAa1W3pm1Z2mdid/J+0DSMckhVUmu6FI7KPi/ycxTH10cG+R0J1SFc
 67sA==
X-Gm-Message-State: APjAAAWHRCd+aP5I+msTz9MnB4nAmMqTN8ksxcE0rYFlBRU50o0YFqpI
 NsJNrj9Emax1K0HTAkwEIqAj/WRtJQUq9nHKeN4J7rsh
X-Google-Smtp-Source: APXvYqy2naqvmWpOmUtsoPU9Unf0REzVNct5rIWzF4wl1jI46auG3ncacSnSgMsUdOrseoc4M3bZE5tXrBCwnrCrMlQ=
X-Received: by 2002:aca:4c56:: with SMTP id z83mr4840563oia.113.1571252371000; 
 Wed, 16 Oct 2019 11:59:31 -0700 (PDT)
MIME-Version: 1.0
From: Rosen Penev <rosenp@gmail.com>
Date: Wed, 16 Oct 2019 11:59:19 -0700
Message-ID: <CAKxU2N_9kLr2r0MKZw-rPC0TqOWV-j32R=GWXkW=cp=EuP7WzA@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_115933_691236_D2311046 
X-CRM114-Status: UNSURE (   4.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:236 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] libstdcpp size
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

With each new version of OpenWrt, the size of libstdcpp keeps increasing:

ar71xx target:
247.5 KB - 15.05
365.0 KB - 17.01
371.6 KB - 18.04

The configure file for libstdcpp lists a dual ABI option that is
enabled by default. Maybe this is the reason for the huge jump in
size? Unfortunately, I have no idea how to pass any configure
arguments to libstdcpp. Any thoughts?

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
