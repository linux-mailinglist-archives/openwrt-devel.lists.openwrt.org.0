Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E0A101B4
	for <lists+openwrt-devel@lfdr.de>; Tue, 30 Apr 2019 23:19:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=q9P0VSFaFOF25lIuy7/A8c5ZOrCWKXXeTZKOrGeI7CI=; b=HsP
	wjEbx/EQsz486yR1iQfALCEAWI3yAkynbccTZ2aHGIBQXu8OXnZv9JW/s9bTXcX/jxkjxNbPbCDlg
	eSAILi7/Fh3zXVZ1rRiUjvMNUZTszSmhxqcZKEx/gQ9NpeR4hZ1Mx5e9IEFcmx6kSE/yyNYCPGLTJ
	ytozesE5utiiB8QWN6wBIlFZXhW0lSqeoFxhCAyMBvIZzvfsx85rm14upypwMgxbKPp6ByMju1dqW
	FCy6ftTbyqC9cI2chvtdbrfDDGo7kGOJCGFTysmB5xPWTKX7KxzT9wQq3LWF1kyyup3ed9PQr6RuK
	BvvpW7WKA/aaRKQacbAFYAY0ydSoumA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLaA6-00035d-6w; Tue, 30 Apr 2019 21:19:38 +0000
Received: from mail-qt1-x82b.google.com ([2607:f8b0:4864:20::82b])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLa9r-0002tp-Gi
 for openwrt-devel@lists.openwrt.org; Tue, 30 Apr 2019 21:19:26 +0000
Received: by mail-qt1-x82b.google.com with SMTP id g7so18132199qtc.0
 for <openwrt-devel@lists.openwrt.org>; Tue, 30 Apr 2019 14:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=CGQwMavu6jFxWliybC8qsFI+M4gGTJ7It2gzTUYU3LA=;
 b=GVx7OwM22FlW6djYTE+6r0naiw9cZX3c6l6Biw2NR/l30GInHNDxpa5rCTzAgM27P1
 +k7BheMUwNeitG//eD16ezuKslpEm7BG60AMFuYjU5sHfQBeOW4GBY13L74iQL+37thM
 jkQO0FeqpAaQDQDTvUYwB+pfTNfh4F1mix6Tt1eBqLQl/mOC8I57+BSMbS0DfQbfOx//
 q00zS9RTBCOCxVyQtFS11jV82Y+3gsZFvWrGbgnZvxhMlLNqvKgR26zJdo4oiAwL5ahJ
 qxk076iYv7WkvYYoXF7ZwT9i5nxT59jBrz9AJ6HBAFGsu0OmJT8QOYm8s+nQlpUgBtJr
 bbQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=CGQwMavu6jFxWliybC8qsFI+M4gGTJ7It2gzTUYU3LA=;
 b=H3Ggo0OqbZCSIfxDOMzLzkLpRbJYqI3ent6+B2AOsdCdXdSlz37NV+s2iPHUt80l56
 zcgXjUdH1dSmK5OORHHOTE22Eu1P8kIRzDosx17/79yD96P33K9IiNWJhFEHjTq7kin9
 lf9Rlzpt4+BD52Mul+zSaEp94HGeefig5+sBjl5zHka0jUnbZ2OJ3mS1Z/7AtE8HxZOk
 J8/NaHzgzf2DTjZEAx+EXQTom7Up2HO6eTzznFsI/ofkXauARYpUuovGqn6/CcSfwwMX
 tgAJAlabamLmvR2VWDqNjA1UJ5KWrr3CnJzl2kXCxgbrhky2YIY2yPatoecckVQHzlOT
 80qA==
X-Gm-Message-State: APjAAAWmNXSVZbllMCVlNIyQBH7hIGhGsSyz+TtRhmFzVvMa7od55vDX
 2vKXg5eNpIBeLjk2Ifa2AfOz6MkkccUHcBemcwB6a8wtsQ8=
X-Google-Smtp-Source: APXvYqwjNKYMw+haYgMycq2muQXIwHfoflWlk26qZv0AcXdJ4ku6+5QL1VYwqma7oVmeD1LVgHUm7LVBKC5apugpRFU=
X-Received: by 2002:ac8:37ab:: with SMTP id d40mr43308448qtc.171.1556659160615; 
 Tue, 30 Apr 2019 14:19:20 -0700 (PDT)
MIME-Version: 1.0
From: H Craig <hicksycle@gmail.com>
Date: Tue, 30 Apr 2019 14:19:09 -0700
Message-ID: <CAOFWa5+Kfo-6oeYT3OTmmk8gHs8uKFP==8xsjuUTbWi-YmtXww@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_141923_936329_5C582C5B 
X-CRM114-Status: UNSURE (   4.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:82b listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hicksycle[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] "nft -f <file>" bug and workaround, 18.06.2 release,
 kernel 4.14.95
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

**Setup:**

OpenWrt 18.06.2, r7676-cddd7b4c77
Linux OpenWrt 4.14.95 #0 SMP Mon Jan 28 08:54:32 2019 x86_64 GNU/Linux
https://downloads.openwrt.org/releases/18.06.2/targets/x86/64/
device: PC Engines apu2d4 board.


**Bug:**

Given a typical  nft rule file with the usual
```
flush ruleset
```
at the top (and also containing nat rules),
loading it with
```
nft -f <file>
```
fails unless the nft ruleset is already flushed.


**Workaround:**

At the top of the nft rule file, replace
```
flush ruleset
```
with
```
table ip nat
table ip mangle
table ip filter
flush table ip nat
flush table ip mangle
flush table ip filter
```

**Note:**

A previous setup with an earlier kernel:

OpenWrt 18.06.2, r7676-cddd7b4c77
Linux OpenWrt 4.9.152 #0 SMP Mon Jan 28 08:54:32 2019 aarch64 GNU/Linux
https://downloads.openwrt.org/releases/18.06.2/targets/brcm2708/bcm2710/
device: raspberry pi 3b+

did not have this bug.
I believe it the change in kernel version which makes the difference.

craigphicks

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
