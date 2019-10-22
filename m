Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A708DFEC2
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 09:54:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ZG3Kr5X0t4JjJULef6ZwtkCND9RehJmq85+SOPlQ1Q=; b=fPkhDdyQW/py75
	h51VJtnK2pDM4e6QwJuSdHsGYZmuG9Dn/m32AA5LkZjJYIU8vfQzuWI5Z/TYrJm2rfK9xq7ebbPnl
	2lpmSyi1Na0tSam5mtA26Hf5BbVjzPLiX2IdCQwbWL+HSiNXZ58D/S6Yxjzv4c6+4lOdx6CgZJg2w
	HUrvjcNRbXJ1Ph3YO4rAyPJl8EWTUW/hRCYv44AX+qI3kA5ANeRKxoeLcWdW9NC6EFWuFrlpP2/yj
	G3jNoDVRtoYwN34oJuK55nDeQ864OTc+BzuCP2etw6S23wqV5O5UFVcX+BNrbRtqDGazTxNyDMITa
	eXyRRp8ZQVL4p4Klkpvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMozV-0008Is-5W; Tue, 22 Oct 2019 07:54:05 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMozJ-0008IH-Tb
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 07:53:55 +0000
Received: by mail-io1-xd41.google.com with SMTP id t18so15131606iog.2
 for <openwrt-devel@lists.openwrt.org>; Tue, 22 Oct 2019 00:53:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ljtK5KE3tc//BZJLqZVUN336wMg4wbqZX+eIuGoY+MA=;
 b=ChwZHEoBPaEZZzPv/JFto4OT6MbRat/+Zi9HEGb9eFY8NPRnka3FHLLP0T4CJIBzgR
 4FgqZ5bY17Sce3b7lAustH0Z+41Iu4FKmW3PFmeTrJH4Nnwpd8WAtrcENbkGJky6nzCs
 0+EWfEKH6+ahwVrbyg2d9bF+oqFgSPNHSjtWJrfYSS1C3vlYDPDDR2ZEwriqkeX3oHmA
 inYFFzJSAEvDhU7OQSKMGpC9x7S5XnzvpElFOy+vCspyLcyZHjnsWK5gjwwe2eActRPX
 KUmBVw4sKLhPIjc2hDbpCyiODL8r+AUbmKXiWYBJm+qocn8IOF+qJd303EgDJkBIykpD
 nmKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ljtK5KE3tc//BZJLqZVUN336wMg4wbqZX+eIuGoY+MA=;
 b=nH1kMgan11UKID/ojpLEuB6CXn0uMSVzgjUgQbYtIxEjgdsKIm2Ax/07s2Vgkr+twz
 zuzNt9j4WNgPbBoQSiss9kR1OtSE0/rnvoybA7zOQsVM1snz8fFQ1CzZ9zFORA9dLdbJ
 AkQ40V74lAe12XmDjW1//Zg2coKBKJGeuIILaxbo6wEE7K9oGATKOOmBmkLax8NRO7C2
 phr5oGzxI1ug4fJb7Gxi6XDvwOdVlQPPSSXQWa1qxm18LcREmliJQO2x+UM+glDa1eY4
 kW3Dz6zIiaZXjSrKkLeMFsahYJ3L2mryp33scSpZ1DcMgY9KM1mNqMZ8kV82VSEaZ0H4
 402g==
X-Gm-Message-State: APjAAAVWDu4Ex3zbI5niwJsXI4CdudqVFXYrOx/3nQnJIZzjOvFkTEnG
 mNakvmsC/ewPTGwvEunPEnYXA6C4U+8/PcDOUyY=
X-Google-Smtp-Source: APXvYqzcWJaOnyuiIBM+8fe8yivcX45cqSKBq6QrGuW7gT7eFRPHbkm0uWVSMqb/w4J+GBnnGwg7T2R6P7LYamKkRRM=
X-Received: by 2002:a05:6638:20a:: with SMTP id
 e10mr2604525jaq.27.1571730832636; 
 Tue, 22 Oct 2019 00:53:52 -0700 (PDT)
MIME-Version: 1.0
References: <1569923958-99413-1-git-send-email-mutsugi@allied-telesis.co.jp>
 <89c14047-2cb8-79b0-da9e-690ca71abc1c@phrozen.org>
 <2298960.buRTO3r5SO@debian64>
 <be030394-83e6-e8be-4642-ac87831c2324@phrozen.org>
In-Reply-To: <be030394-83e6-e8be-4642-ac87831c2324@phrozen.org>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Tue, 22 Oct 2019 10:53:41 +0300
Message-ID: <CANoib0H69bDzjRuX-7H+nr9kxWrULA7DcCjCRXgXC9UM3-6nzA@mail.gmail.com>
To: John Crispin <john@phrozen.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_005353_954625_9CFC0A31 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ipq40xx: essedma: Fix dead lock
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

It seems that it is not quite proper fix.

Yesterday I flashed a Linksys EA6450v3 with 19.07 build. I couldn't
connect to the device using a 100 Mbit laptop.
I had to use another laptop with a 1000 Mbit port to reach the device.

It seems that after the patch we avoided a lock on 1000 Mbit but got a
lock on lower ones.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
