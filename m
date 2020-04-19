Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 395521AFD37
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Apr 2020 20:49:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qqxR88QEW4tczWYz8SDYt11K2OTo6NJBp8Dq+QCPSzc=; b=mNmKvN7OsbrHJsp4lpdhVCvM+r
	hfZqD0nnnmm6YSejtFxv6/mu4I8HkUYVB7SdzP5dJ/OapVOgWuC88sX2iaCXjG76TUTApY8JivMQL
	GT6tx/0oz9j4Z1d+hf5KkK4HNnKjWzgUvmVVDch7/pCBMioIR6zfHixxtiSQhQWE6tNepjTbFQk+8
	ZhT4frzKcciFY95yvFqhFLDb1+6bguYGA7L6UzGGWwHly5k1mdi67XsEQbHM77+tqWYl8kDZEIQko
	yD5K/orAJfba4aRLkcnEVRD2koJTvCXf1e1TeNUwBy2NnhAUGcdxZsWvCvjWNUAeyhuDJRt3Ig9xu
	eN+W6A3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQF0Z-0008IA-Eb; Sun, 19 Apr 2020 18:49:35 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQF0Q-0008GU-8s
 for openwrt-devel@lists.openwrt.org; Sun, 19 Apr 2020 18:49:27 +0000
Received: by mail-wr1-x431.google.com with SMTP id j1so3953570wrt.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 19 Apr 2020 11:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=Qmqfzam+EYQtNUwbgG18OnYJ1K7wAWIvOfk84iWKr3I=;
 b=P3Xd+nP3Go+PqO55Ny2Q5R+hZbOMVCZv1ld2/d6ROXNKY7sF0QzaiG31CWZM+UuwPf
 di6N29NR3BBN9BnR52DkuIIYtL4Vl/Qb2EbptJ8eXQUafiFvoqLtetWI6H1JJczqThPu
 6wce2sNvHAU3+Is8XLREFXLK0QouNmGriGeUtoNLE5OCFlmCNqrn6rmJJpKwu/ssIpFc
 w2rqd5Kvr9l1JnqsKE8dfdfZDnc5oTcxdktb6u6d5SKMGaAIeEHsa8oZyBLDvvPC9jT1
 44eBOnAZ/tr0ObSMzdWzS0I+7ToJDUJqn2oRgtlDal9e4V1lf9HK/t8yXJGO4/EZw2Ih
 hEIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=Qmqfzam+EYQtNUwbgG18OnYJ1K7wAWIvOfk84iWKr3I=;
 b=IcLPoNbqJ+mi2evTRPwEBbNKfdSmd0S2GhzCXuvn3Mku/crNONAyRCgOY+3l6wuVqQ
 ieihD0ZWMWc2GetOaMrQ6WNFcozBntOM22OkcjqpEW2BFr8cGZW5ZWrSbo/hWy/G0XXF
 VnXfgyYh9nY3I4TUETWDkWj7IBpQq4dEZiYaqHFzEA+17whj2mnacDbWIzafawSA7+Jt
 7LmCCF9WhIv1mtcSq/wpVvmMMioV6MkYhQvbv+K/PlVBI0NyG1NtptSNqtTgoXP0o8lr
 5fAdKKqlu+l+zFfyjsN/d1/A6fj7OGEc9+k5I5IamNc8lvCAzczFOSYdoF340m8Fuaea
 xSfQ==
X-Gm-Message-State: AGi0PuZGyISPZKSy6aR8blbxP9e4e0bZjhjtRVtdhW7zJFyVW98yhp7k
 8VZsWHHIy29/2pZNNdjqMVEx+nKYrKo=
X-Google-Smtp-Source: APiQypJukijYoYzhnqf91rMLt1C+WvWBCPlomXOqDP32V4Ga9mes7Z6zVv2h8Hzm4e3LSnA/Co2wdA==
X-Received: by 2002:a5d:68ca:: with SMTP id p10mr14838797wrw.154.1587322162493; 
 Sun, 19 Apr 2020 11:49:22 -0700 (PDT)
Received: from localhost
 (2a01-036d-0111-d83f-915c-1114-2382-d092.pool6.digikabel.hu.
 [2a01:36d:111:d83f:915c:1114:2382:d092])
 by smtp.gmail.com with ESMTPSA id m188sm6394783wme.47.2020.04.19.11.49.21
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 Apr 2020 11:49:22 -0700 (PDT)
From: Szabolcs Hubai <szab.hu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 19 Apr 2020 20:49:10 +0200
Message-Id: <20200419184911.5249-1-szab.hu@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200419003715.26284-1-szab.hu@gmail.com>
References: <20200419003715.26284-1-szab.hu@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_114926_337574_02AEB85B 
X-CRM114-Status: UNSURE (   4.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [szab.hu[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:431 listed in]
 [list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH v3] ramips: mt7621: use lzma-loader for
 D-Link DIR-860L B1
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org



Hello,

This is my third attempt to revive the snapshot images for D-Link DIR-860L B1.

In this version, only the dlink_dir-860l-b1 recipe is modified.


--
Regards,
Szabolcs


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
