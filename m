Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 267FDBAF9D
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Sep 2019 10:31:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+GZAs6A31HodfxrgtWls/xFeBl9AV85ZGnWDKlYFzQA=; b=JkswdkO6nJwk+K
	6gUsrCJYCZqE38ruZpWF+WbbLh9ezaH/CkRc8+H/2rSovQU6QMIJnELPJxCTYhO10y52B2wUbR/TP
	swXY9+z9DyPFfeugZyQ+MuAmTywuknz4/meMPYnbdumYexlJ9h0T0yJI3+uxePyochRCaQzXkrnYv
	U5iu66jnjyJMn+TSOnwHPn7H8PjUHFEOVHBDzf3nI+1qCJpCUJz4aKU5jFp+LZGGZFCRU//z1RJVt
	Rmf55e20+9wVk+YqaomuhkufO7IBRe2yjQtjnrsxwGT24g3KfcuNn2v4xIbtGQO+Ke3io44ilbWB8
	4891qtti84shk91yJ86w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJkj-0006Se-12; Mon, 23 Sep 2019 08:31:25 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJkZ-0006Rz-0A
 for openwrt-devel@lists.openwrt.org; Mon, 23 Sep 2019 08:31:16 +0000
Received: by mail-ot1-x343.google.com with SMTP id g25so11388960otl.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 23 Sep 2019 01:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JFixgme5RZxywipEN2GMplNzqT9KZWrw3znmQsvV1jA=;
 b=hQWoxfaahvidUKzzbaenLIC+TiB6mrlIpMxWVGkiT7/DoqF4wMdcqZ6JijUXsGjjtS
 8XZ2K9nTis6spsx+KfgJqq4FdnWVDcKnOpSswm4eVk+lVJ2YPGpCPNWoPWJBbakE0Hsq
 jGmYgNNURV+n/LFUPzuhTHnAQXVcqsJg70KljLyodDWLoR5HkbBWsqDPGEMwDMpDCsBA
 CA0GcmxahoxCqZcQ4C7sPr110Nf+UbTfHIPL4fo67+ntnj44IGnhVlQD/NXU3cCByD0p
 BopScVLNJUwm5muG4016hZIWHVIL3TlogsCFGeXNQBIAJ9B60HLIFIWua3CZW0ZNrjcn
 Bvtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JFixgme5RZxywipEN2GMplNzqT9KZWrw3znmQsvV1jA=;
 b=rCrXv7v+MKKxyw9ocO/cTowvwdka3qrWb5jpOnKj9T3+1mB4eNTLIohrDB5NBdvNz+
 j9WuNbSqbiIxXlWcYBCPLTxuBA4EJFouPD0+jpmodRHdGCY+EpnaPw4TcIDqI9xG8eNJ
 4oYoknCZsQ2QgeVGF5VWr5zyysbL5lUepRkqnxINlqyt0sz/3hR11ZnQtnkuM0X4/fO+
 xbp+FZLd9qUub8ICjl6v3cZVsn2jZsrjPFr96o21HsDox3np1y8OnuTo5MW6Xwz1MJWX
 H1Bp1dqCXDE5Dr8lUvBv2lB1t5eUcMYuC1jcJWqsG9/5JNdjAhXkh5AeeIxriq6iV94o
 S9vQ==
X-Gm-Message-State: APjAAAXkMMyeaZzpHTtlWcRX3LgzwSmVq3F4CACttqSfA+CcYgBUem2F
 y90f98REk07GURMhev55xlNHVNrj0aMtK0jd18RE4qsjD4bJdQ==
X-Google-Smtp-Source: APXvYqzm+/hKr9oOdUGaomTvzS5hyvN1wk3bz6NPThqpd5Y5BvUnmzjpEGgBWOFNhvImO6D+i0dsFbWEKr/diHOevEU=
X-Received: by 2002:a05:6830:1f16:: with SMTP id
 u22mr17433128otg.181.1569227473437; 
 Mon, 23 Sep 2019 01:31:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190922100135.2334-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20190922100135.2334-1-freifunk@adrianschmutzler.de>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Mon, 23 Sep 2019 16:31:02 +0800
Message-ID: <CAJsYDVJneypQ+TuRnj7tVh0pXf+LCjFGEUh3v1Smrmg0g3nHGw@mail.gmail.com>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_013115_066234_586EA50E 
X-CRM114-Status: UNSURE (   5.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: initialize youhua,
 wr1200js WAN MAC addresses from flash
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi!

On Sun, Sep 22, 2019 at 6:01 PM Adrian Schmutzler
<freifunk@adrianschmutzler.de> wrote:
>
> This patch changes wan MAC address setup for youhua,wr1200js
> from retrieving it by calculation to reading it from flash.
>
> This has been checked on-device.
>
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

Applied on my staging tree at:
https://git.openwrt.org/?p=openwrt/staging/981213.git
Thanks!

Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
