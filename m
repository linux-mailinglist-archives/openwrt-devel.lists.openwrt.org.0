Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B5918ED3E
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Mar 2020 00:20:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nJa2sfuz/Gbvyk3XXyP5ZGoFRRyBNIz/be04DEVX4ak=; b=jnCtSJsc4YQC+w
	3w9EuGQOnwMFh7JjAwqnc5fF2iu/lvBxYeUu/at+SgdbnVP+7yoSBNTM+XtE9IVDYdYbr+sfiWeOE
	+78Si+oPFnIHq+MSYwm+ZFzKalSjzJF15yl3o5l++WEzSHx6pfyRwS8LYxjIOhPQDDnOAMnegr767
	ZjKbNm6L5z9N6tRMYVq+x/DJIC4ldbWQsX1Vqed6hPRFtBlN+dqBcDKx+czvC/oXBcg91987bQ6f7
	RrU4FuWFV/Cdl8l9yI+/7EW3OOt9VHd8mx1UTejK6NfhG0/I6UVw+LeKmn58OmKID9Nv4oQZAj1VR
	5S9X7UXwbrpwZrMogrJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG9t9-0006Bp-R7; Sun, 22 Mar 2020 23:20:15 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG9t3-0005u6-H8
 for openwrt-devel@lists.openwrt.org; Sun, 22 Mar 2020 23:20:10 +0000
Received: by mail-wm1-x333.google.com with SMTP id 25so12717321wmk.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 22 Mar 2020 16:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=YjslZOYh5ScbBFXOvUg0dgXem/eLZQ91JlptRQTQnco=;
 b=GHVvWotpthksj6PPaAQmyJXN8OFsZz7sknB+iyaWkN8meigs/KPkRbIODcyYeSIMPj
 9KtHctw2R/Oj4pr3FRxvJFDilew2o6NB4Lm3NrAnZ1i3KTJ+dbLTEOFTd74kgaGF/o/N
 mBaElZaMpqaMMJJfvpLi4IpSW726sz/kM1oJUYaqTmgYRlwlMFHvffTJdnKrDHAr4WC3
 zmnu8dk4O7hKKVhqYplf+r/CWmBp3KQscRDV8Tx03LH33AScl4ll8C0TC8VWPVCGfik0
 6jsjLthHQnDO4TxpE83fHKUkE1zO/LNRHVFKTCChPvx7tJz34osFq2BqnNNXd+6qgyuf
 5t0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=YjslZOYh5ScbBFXOvUg0dgXem/eLZQ91JlptRQTQnco=;
 b=EkYNGo8g2c6ydFWUk7+g9DgH4q1OGWcXNA4O0g3bUFVxmIHaHPbA5bBxoRvBk02t8c
 fvEw4N6c9lGis4615hnO8P6VoX6YeDGPGs9VJ6IddgvjdAXFWp1qLWKbPehbSzM3OvCi
 Fx0o/qUiXmmDK404O7i6g0+UYcpb5tAugX20oNjKS3UGQUkFj8sAvcED3H0WZ/gzFieM
 Vi4b4T73b+s/a2NOomshA+toSjNqGbldW4H23PSVa2lPpeFq0qQXSTBA9u8QIaloTOI5
 OeIEYxuPKvdfgP9QETTIkETVk8C9tJpZpMwh20YL7cbeGbVuxmyeq1z2DreSo+apU3Po
 IdKg==
X-Gm-Message-State: ANhLgQ2t500YkwiQus8UEe72qKNAvfP4wec1cX8TXUW8/w+12ihUCQ8y
 eksWa0q7UL4to7pFJrrSaGE=
X-Google-Smtp-Source: ADFU+vu5YcMDFMKmhRlrHh6FM0HlzfeKWriwXhRXuuti359z7a/7THCi/trznoGDt0G0bKEt1wL11g==
X-Received: by 2002:a1c:e914:: with SMTP id q20mr15570065wmc.105.1584919207288; 
 Sun, 22 Mar 2020 16:20:07 -0700 (PDT)
Received: from localhost.localdomain (ip-95-220-18-161.bb.netbynet.ru.
 [95.220.18.161])
 by smtp.gmail.com with ESMTPSA id u5sm12691235wrq.85.2020.03.22.16.20.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Mar 2020 16:20:06 -0700 (PDT)
From: Alexey Dobrovolsky <dobrovolskiy.alexey@gmail.com>
To: john@phrozen.org
Date: Mon, 23 Mar 2020 02:17:07 +0300
Message-Id: <20200322231707.6014-2-dobrovolskiy.alexey@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200322231707.6014-1-dobrovolskiy.alexey@gmail.com>
References: <20200322231707.6014-1-dobrovolskiy.alexey@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_162009_574237_C3113DE5 
X-CRM114-Status: UNSURE (   5.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:333 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dobrovolskiy.alexey[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 0/1] ramips: use full 8MB flash on ZyXEL
 Keenetic
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
Cc: Alexey Dobrovolsky <dobrovolskiy.alexey@gmail.com>,
 openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

*** BLURB HERE ***

Alexey Dobrovolsky (1):
  ramips: use full 8MB flash on ZyXEL Keenetic

 target/linux/ramips/dts/kn.dts      | 2 +-
 target/linux/ramips/image/rt305x.mk | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)


base-commit: c3bd1321de1e0d814f5cfc4f494f6b2fb1f5133b
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
