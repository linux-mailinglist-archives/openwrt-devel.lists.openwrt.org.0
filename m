Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF73CF615D
	for <lists+openwrt-devel@lfdr.de>; Sat,  9 Nov 2019 21:24:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Wrwe6pp5TlSAqq2M7zQNul5tXLT/ovWgPrZQXYDaexk=; b=ALRsT26R3EkOm/
	Mv9rcobpakx6wk/uVfFPV/TEKjQxidW1hbnf86tmuu/LalIVBf7MEq8tiHY69ysJiLfFd2/aF7xw7
	B7S7V1hQyRK0+NKWfmVIUX3OOKUrj6zuusIilzU6nL8taKRvw1kN4foU3uHEO5GnFvF2mJltLwoUX
	XRxZy33s7GHUKZRVAjz67ag1QnN1NR0iEVI1kSagahF+haUsKBmyZIyxIsr4xoHhwKsBFweFoCeFW
	yHiH7X73c2aga5Dm3b2VjcXLtPplTxsz5VxiDeymiRTudeKvaEbTPIQ0uPW0soyQVlkT2GowlKTub
	WGJYYAborTsEfBUtgyOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTXHK-0001WE-0t; Sat, 09 Nov 2019 20:24:14 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTXHC-0001Vl-Hc
 for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 20:24:08 +0000
Received: by mail-lj1-x235.google.com with SMTP id v8so9721494ljh.5
 for <openwrt-devel@lists.openwrt.org>; Sat, 09 Nov 2019 12:24:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=GhHNZaai373bY4J5M5iYz2F1dbiSlPtJx39Az3oVZnQ=;
 b=LRrpF+PAiFd9YpLZVIj/7qMuj+juxf57yo0Xi2FV7x7sIQRklZV2nuSqlez32ERa9o
 hlem96L2WqXoPr8+vsThQMhwjf891BG3YrPGKQg5qeY8hCSl6mUZRsL8b2N03vnjEgda
 xm3WVyBLZ444XhmPbKo+dE95Nbw/y8i7l8+61p/9joSvGYYlItI+XOSOtJtju6CVSFgm
 j82yalByZwZZi4yEDZVcrJfh6iPXW2DfQooNJPdpMbxashx1jxuDtL1hc99lA2g5JFCY
 751ax2A4DJS8J5BJD4iKt/DxkhI7ODfIyH4ZrW+m+aldjx26ZIsUFI+g+5cYk+K4QZVY
 HMZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=GhHNZaai373bY4J5M5iYz2F1dbiSlPtJx39Az3oVZnQ=;
 b=daTpAgF+IOoJUl97bH9Q9sfZo+5nilCPoBMEQWDoaqLYN49xeL7PbU1gXgQuFXjpnu
 TVAiyEZsXunFTYOVwQgy8rNaGiVFr+UJe4RuAAeg+Uy3MAj90pIRp+VaKAr8HeVuGZwW
 IzCPDwbIQ/3TF+KBICA89mKKyzxmAxAe9SaZ6cYQo3ueU1XA6XXh7Kj21w6iIDUxtLHN
 12vjkWLSfzHLb4gA/51u/AXkKOptFDpcu0ELbXjQOEPob8uCxEPYSji+hyDKUqSl+Luz
 tHBihJLJNgr0+3mU3ExUjvRprIjcJNhMPjKPsEgePzUeOMPJeaO8OQvu53JBf/PQmmZy
 EGcA==
X-Gm-Message-State: APjAAAXg8KXKB+XF/9I/QpHR39OVdZMfHJgaywFlqyJZjCKdZw8NubaP
 K/wGUQPMszecEVaShOixSDfZJrQW
X-Google-Smtp-Source: APXvYqyRfbr5tOAbJro5IIzfAGE68Up2MQlZTXpKUfa+8QwiVg9aRc/ePNaLh8baWOgVyq1FVImXjQ==
X-Received: by 2002:a2e:921a:: with SMTP id k26mr11410423ljg.238.1573331044258; 
 Sat, 09 Nov 2019 12:24:04 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id g21sm4479872ljh.2.2019.11.09.12.24.03
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 Nov 2019 12:24:03 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xA9KO0kw025370
 for <openwrt-devel@lists.openwrt.org>; Sat, 9 Nov 2019 23:24:00 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xA9KO0mf025369
 for openwrt-devel@lists.openwrt.org; Sat, 9 Nov 2019 23:24:00 +0300
Date: Sat, 9 Nov 2019 23:24:00 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20191109202359.GC1190@home.paul.comp>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_122406_609533_82C3EAAF 
X-CRM114-Status: UNSURE (   5.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:235 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] 4K sectors on ath79-tiny
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

Hello,

What is the reason for not enabling 4K erase sectors for the 4M
devices in ath79 target?

jffs2 needs minimum 5 erase blocks so for those space-constrained
devices this option seems to be really useful (to be able to keep
configs when the space gets tight). 

However please note that if this option is enabled then sysupgrade
will fail to properly keep configs on upgrade, that might be a nasty
surprise for those already using the supported boards. So what would
be the way towards enabling this feature now? 

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
