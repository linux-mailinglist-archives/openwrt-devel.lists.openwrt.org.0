Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F42115EEC
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Dec 2019 23:21:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/r19cRpHO0XBtKUbWVzbjT4XqyIQgEp0vrigHo02x/o=; b=R/5aUs1ZFcyGh4
	LYCJdzXf6yq7AqPxZB3flu9tbTMlrjaYNZXnQcLUPB5C9rxxXDLx2n7cxwSs7kKQ3UapeyQOX46SK
	myofm2fqWEA70TPK2ZcvuuGqZHwsgUlV3aUsI7SlJPznad4yu4he0mNnLz+0xzpwg1rkjHLy+NKze
	kSSLwnBTOqz83V07ag4L2WaHRiTvP21Vivs1eyK7/6bp5o4ApgtPMyTkuLFmL0RzAvN+XbpoI08Z6
	4uPnFh3U+qFNKryTDMm0bO+HTfWqTZn4WxJsTd9mS8WfI/xwPTxhGB1sLNmdiOHx4d28uWsNJLoq6
	LwEeq6TDx9vLIDFaPjyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idiS3-0006uL-1S; Sat, 07 Dec 2019 22:21:23 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idiRs-0006u4-Lq
 for openwrt-devel@lists.openwrt.org; Sat, 07 Dec 2019 22:21:14 +0000
Received: by mail-lf1-x142.google.com with SMTP id 15so7925620lfr.2
 for <openwrt-devel@lists.openwrt.org>; Sat, 07 Dec 2019 14:21:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HIm+l4nQCoHGNvlLnqqs3gcnCYDewEKwOUxRHi/xR2s=;
 b=nMSL/EVNKgbk/9eqSxgbl2oHjfP2QD/MgRmIM2IxbjEM0EGJGeO29qhGu9gBD0REam
 EbhE60JFUBBruX1iTgFfRlY1O6TUI48JCGmZnUn5GPYbiZniiH/EPRF0LkG7zEumczHR
 jU7EYz29GqytxSqtUhW6j9KWC4uB6xw+0e9rPP1iaInxcEPCFsaRxCdGUqVgE6idawyT
 uWTeXUPwGIe7t6ybExkUCm9U2Pn5i87kcFX4+jW0YrG7nLpdx0QHshDJnf1XyiBfwdK5
 /9FlsYlHdFPFQgY7hDb7NY7nhV9+tPFLZV5fx1Uy6WodbazxSysQNJw3DNLJ/0ORgsSu
 tZRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HIm+l4nQCoHGNvlLnqqs3gcnCYDewEKwOUxRHi/xR2s=;
 b=LNU58/w8xCq0nm4N15knUNw/6N49Kb5G1Y8mlhG30KJAzuOpxNNyEroIhG06K9Wxjo
 sqcCMmb45LuQKLB4F+QcEiPQR1ndq8HOlqfKr1sa6ebEauq3AR6R6zuy10GUapZ5bkSv
 G0izFKw/M+I4NWXkTtf4Ow/ZGB1+LG7wJ5C7+xFgx7w0iMlEodMDcRwqwebhLALMWicG
 KuRdxj+GgExfvRBxhtHX+EG6y1gXd6afRF7UXak38PgGA0MDEqw7YowmcNxSijzS6rj7
 BaTmmpM9pA2R+NbeL9sPlp/UxejgktF2PYkABjj/Tf7eCX7QetZDcV97gZf57/0nZCQx
 k9vQ==
X-Gm-Message-State: APjAAAXXAdbE5mkgAn2LSwwBPAZK+HjZ7yt5u0lb/4B1LWppB6eHqeLB
 pql1WMDvaZZMr2EQA5Qzc0Q=
X-Google-Smtp-Source: APXvYqw2XjN+OeGGtOgjAAjlkSD7oQgnvnaPFtVYgcvT/lktz4qGph9CMU+Gfgw9eCrxBZOmmCLxnw==
X-Received: by 2002:a19:903:: with SMTP id 3mr10463844lfj.110.1575757270740;
 Sat, 07 Dec 2019 14:21:10 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id h7sm8645762lfj.29.2019.12.07.14.21.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Dec 2019 14:21:10 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xB7ML8Dn026920; Sun, 8 Dec 2019 01:21:08 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xB7ML7Nq026919;
 Sun, 8 Dec 2019 01:21:07 +0300
Date: Sun, 8 Dec 2019 01:21:07 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: mail@adrianschmutzler.de
Message-ID: <20191207222107.GH11070@home.paul.comp>
References: <20191103113247.9782-1-fercerpav@gmail.com>
 <20191109135320.25020-1-fercerpav@gmail.com>
 <20191207140405.GE11070@home.paul.comp>
 <20191207150413.GF71465@meh.true.cz>
 <20191207201011.GF11070@home.paul.comp>
 <20191207205826.GG71465@meh.true.cz>
 <20191207211114.GG11070@home.paul.comp>
 <003901d5ad4b$46efc9d0$d4cf5d70$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <003901d5ad4b$46efc9d0$d4cf5d70$@adrianschmutzler.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_142112_716648_13F4236A 
X-CRM114-Status: UNSURE (   4.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: add D-Link DIR-615 E4
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
Cc: 'Petr =?utf-8?B?xaB0ZXRpYXIn?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sat, Dec 07, 2019 at 11:11:27PM +0100, mail@adrianschmutzler.de wrote:
> Well, address the issues we have agreed on in a v3.

Sure, will do tomorrow, thanks!

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
