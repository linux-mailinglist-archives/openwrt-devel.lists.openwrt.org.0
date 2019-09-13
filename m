Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E42B26AE
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Sep 2019 22:32:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dFxYUyvwCeTEXLMZ9YWNIvTy3Mj11muE0H6VTHgT+G8=; b=bIUFswXD/uw1Dx
	d6sAoREFLDi0bwOKz9ej+oJldxA/EN2NTEBWO7kg2YAcGE30/TLrTwVloX5GceIJp4Ks5KQDYwqE/
	WuBhnnBRlQqQoEINAJePRFHPQa4RWZ0NpRPq/L9F2l8VIVxDUkPi3BVs6NNnqliiOOCyYOE3L0LGL
	gY+dVVSICCE9hOahMdPOWHVChbvAf9sMyVEMBS0oNhqDsK9kM578iWzoMdIo+ICFe/BdE7hAu9g6Y
	wqjP8WgDibd74JXLGygC15xpVbqX+/yzTyvB2MsztNMh3r10MKznbEowt/fbDJQt9lj8f0Qw71QD6
	owsQ2lIAR8U79CTIbChw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8sEZ-0005Jl-Rp; Fri, 13 Sep 2019 20:31:59 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8sER-0005JQ-6I
 for openwrt-devel@lists.openwrt.org; Fri, 13 Sep 2019 20:31:52 +0000
Received: by mail-ed1-x52c.google.com with SMTP id y91so28103105ede.9
 for <openwrt-devel@lists.openwrt.org>; Fri, 13 Sep 2019 13:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:content-transfer-encoding:mime-version:subject:message-id:date
 :to; bh=eviUOaOnl9QZVE5kAYgye3lox6mbL+NlMukTTiYVPIg=;
 b=BT9B4WaJw6UQsFbpLtibtABxlTonoJjLoxKSutB5E25nN5YhRYZAwLTOlSQ6gSAoqn
 r/FbF/xreMV5CgJB9RiUucoZ5dqFv/4SovOS92m4Qot+5Ngiehdv8WtJocDKWAxTWeEr
 5+YWY1LFOtESezX1Fc0jE+gp+0jqSWZ43r66ncjq6FOTjp7lCGh1mdoSSopm/aGp8D0v
 gdeYDMFoDUI8wJ0jph59nfFSUVCR4G0exKendFlB5vWGIdCdG39jTM54QRiQ/ooEmfMp
 yN71r0FlPDJDGahZk5GQLbejs4WMNxqoxIYs43LN/x+jeOTsUEQk3ud+cmcBwjOr+uis
 h3nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:content-transfer-encoding:mime-version
 :subject:message-id:date:to;
 bh=eviUOaOnl9QZVE5kAYgye3lox6mbL+NlMukTTiYVPIg=;
 b=sQ4biehaJlb/MunASwlK4v6B8OSrxwPUmt9RyfboKP6HLV1NAEZlXKvg7YMS6hjO5J
 ITozNdwxvxc+Ef25MSwfNzYMbkrTnEX8ZtNmyv9Df5GdqSmbqoDaVhXEuEupwuknHXSH
 19YHll3adwLkqzrAUHpvgHGn4wRUDLvhTA8tmCzHQOXaccbmqu2QwUhxAAR6gtX6Ms0O
 jHG8NdDtsqi/FF2D17HDVHIKvuN+ARg98oJCBejgZMqowOiDDtmu0K8LQqF6gJJ5g41a
 S+TvP4qxfTWgKqwp5NsFrot7xc4/BghAElSO8SIN4Mg7NHYsQErY6zjFoKucm6kzOamy
 Y4kg==
X-Gm-Message-State: APjAAAUHJJgiTw508kghpXFcAilhvLG4A1FmwIFoER3huPgG0JxqLS22
 70sEZZba1LsJjB8SQU7rP2qXqGfk
X-Google-Smtp-Source: APXvYqzs6EDB2SMC2Ktj/vrNzPkKWNb0PN4Iuut1qkSnaYCKl1ouBmRjxSLDkJ+d8CoS7zIdfbrisA==
X-Received: by 2002:a05:6402:1426:: with SMTP id
 c6mr33823501edx.53.1568406707885; 
 Fri, 13 Sep 2019 13:31:47 -0700 (PDT)
Received: from aarau.fritz.box ([81.221.232.148])
 by smtp.gmail.com with ESMTPSA id m14sm5010247edc.61.2019.09.13.13.31.46
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Sep 2019 13:31:47 -0700 (PDT)
From: =?utf-8?Q?Ivan_H=C3=B6rler?= <ivanhoerler@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Message-Id: <8957A07D-2E40-45D2-9EF4-AA06AE649692@gmail.com>
Date: Fri, 13 Sep 2019 22:31:46 +0200
To: openwrt-devel@lists.openwrt.org
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_133151_236807_55A5931F 
X-CRM114-Status: UNSURE (   7.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52c listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ivanhoerler[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [ramips] Linkit Smart 7688 kmod-sdhci-mt7620
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

Hi
I have a question about how openwrt handles packages needed by a target.
The Linkit Smart 7688 has a SD-Card reader that does not work with the official build of openwrt 18.06.
Adding  kmod-sdhci-mt7620 makes it working. 
I think it would be nice to get a fully working device when updateing with the official build. Right?

So i had a look in to the files and found 
openwrt/target/linux/ramips/mt76x8/target.mk 
and 
openwrt/target/linux/ramips/mt76x8/profiles/00-default.mk 
where some packages are defined.

Is one the right place and which path is the right one to define a Hardware dependency?
Thanks. 
_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
