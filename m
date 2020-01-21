Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C361446AE
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 22:55:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0iGJLrG0DpE5PbTvEi7X7n0jcUbZtL3tPKkLiOsPI04=; b=qXaX+Gb3tGBW7+
	uXaf8gyL0EGr8KWp7ygNnw9TLBdOPO/JOQ4nLChE1b2z3bKG8UCwxvDqr3safJXyYB9/dpOEeH4D2
	8Njhv4s+gUwovX0PMof5MgY9b96B48szxT9egZNxkRYMPPsmxU4W2eRps20HzZ0cn5LoI11ytKRCm
	ZA9P0QJ4SI1pj/UT3/mYehvD+fR/jDisBBH/JZKvqiPvbdvRbui9bMfVVeJOuDJf1oGD5urUsmRnB
	CPGYUqr6+AP3BQx+9EAzLqvh45UTSmN43kLDjnzRwkiO032Y2jkagq7hOe9KRKT6k1jnHS4eLNFy4
	XM2MjrDzfsXfL8ugnKzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu1Uq-0003Pw-KJ; Tue, 21 Jan 2020 21:55:40 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu1Ud-0003P3-Fr
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 21:55:32 +0000
Received: by mail-lj1-x242.google.com with SMTP id q8so4434539ljj.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 Jan 2020 13:55:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6Wji02TajW48maAxYo3aULjHO0zjAcxwStE/PNaOZoM=;
 b=CNswPiRoBdv3v1NvNgIMxJV9aqFAevKQQtGwm+jt/aH6I4M75ppvwxTG3RLyCiaJJ8
 EmUVFsBhhT7VuaVR3/2HvJhFmiNrMpTNBsFzBXw5cEfWJJdbmlVzRTTB7/zXvzGiQYUh
 ps6MsCsFrnASyHymyQLEpzAOOkg7nZG3FL9q3y6SxUkyLZLrXH4UhKjDl98tV3w9jUWL
 McwhrF9Pa96aHQYmU2ybH/0a6jPhiNtK2ry7dmykv/CB3hX/zLIRFll4cUiPOU2jBMnE
 1KCef8ohBPy0jZprG1VXXd053oL7Q1qlJfOUDM7K9MYlKhXwdVgpEDpXPga6rxepbqGu
 1Htw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6Wji02TajW48maAxYo3aULjHO0zjAcxwStE/PNaOZoM=;
 b=TeYjnuUR1v+gX4BTg272fwMHh/nkkiHTynGpC9CEzaI7t3lBwUpeqtf9/e4TC9Ro2N
 eR0dwlIkSQJ8D9YwxgYDPScTnrymsrpGL3F3QEXxjYztsqfuA2qvOi4i/oNAIW8nZwNU
 JbWffP+7ltOs4wo76plPvoFud5aVa9mMfhsGV6gIJcsfrXTVW9Y6bRUHhJnJEBSsTDAx
 H+4DCDRMMaFLW0f7N6Hhi5FadUStgTSmplqsqERtovxkCeT+E9zYVJb1u48oy8h0HIEZ
 /pUmij2BdNT0Z2adnDiBrzlxZITIMiT+99R5kunbSeQXp0fkJa+/j3ZmH8y1vGI9kkXS
 vr7w==
X-Gm-Message-State: APjAAAVUyc78wInt8vcJGszWZruECJFryDRXgPmhOQwn5RIUjy8XYq+8
 n5I8MVXqF6hyL+LuGOqTqM2+lC/k
X-Google-Smtp-Source: APXvYqxqttK4B4UZ4vVEgVr3wFup30dUDXW/+0fHC/6LnW9bd0CU1oPoxIUCe6VdyJa4obl8usa0Rw==
X-Received: by 2002:a2e:9e85:: with SMTP id f5mr17692240ljk.132.1579643725551; 
 Tue, 21 Jan 2020 13:55:25 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id 2sm19296831ljq.38.2020.01.21.13.55.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 13:55:24 -0800 (PST)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 00LLtLm6018143; Wed, 22 Jan 2020 00:55:22 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id 00LLtK5D018142;
 Wed, 22 Jan 2020 00:55:20 +0300
Date: Wed, 22 Jan 2020 00:55:20 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: mail@adrianschmutzler.de
Message-ID: <20200121215520.GC14921@home.paul.comp>
References: <20200121205751.1810-1-freifunk@adrianschmutzler.de>
 <f882f1d1-a751-1bf7-6e16-d46e2ce1d00f@david-bauer.net>
 <00e801d5d0a4$842ad070$8c807150$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00e801d5d0a4$842ad070$8c807150$@adrianschmutzler.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_135527_557318_9A1D1FB3 
X-CRM114-Status: UNSURE (   5.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [fercerpav[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: move lzma-loader to the end of
 available RAM
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
Cc: 'openwrt-devel' <openwrt-devel@lists.openwrt.org>,
 'David Bauer' <mail@david-bauer.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

On Tue, Jan 21, 2020 at 10:48:28PM +0100, mail@adrianschmutzler.de wrote:
> I can't tell you why overwrite works this direction without further
> research though.

"If a variable has been set with a command argument (*note Overriding
Variables: Overriding.), then ordinary assignments in the makefile are
ignored."

info make

6.7 The 'override' Directive

--
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
