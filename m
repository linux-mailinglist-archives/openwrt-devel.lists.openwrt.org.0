Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 166AD1EE4EC
	for <lists+openwrt-devel@lfdr.de>; Thu,  4 Jun 2020 15:03:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I3u1QpkZ1agV0jADkwqA6HKrYXtH8cKSnck52T5EAp4=; b=YBrlJGz+O2nVCf
	lxDU/G0JFT0X9tGkMSIuwlSefzx/F02qGvNOXQSbSOuBFEaSRo5LCwa74f99IDEScyf1kKzo5nBAJ
	t6mdvb1WujX2iD1VzKmF4N5G/pN+L3R53dluMOSAaRoiZta2AVFa7HXj/Vc5QOxb2DoAiKiEE3w/p
	glvGEx45ZF1RhzPGD1kgWhlzgQJ17cqJfgXRmT8U/Lfl1efCVWkrFYjhRPb92L7IcXiX1xik9QTyU
	+hUSrVBkkB8qCPNFvOK74b3EQw/KmvofdCzBcuvmd9hQubMCHqppHJaPljbELoBU3x5Lb/ksu3KTz
	HexXpoRF6pptRYJg9g3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgpWP-00067z-IA; Thu, 04 Jun 2020 13:03:01 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgpWJ-00067M-2j
 for openwrt-devel@lists.openwrt.org; Thu, 04 Jun 2020 13:02:56 +0000
Received: by mail-lj1-x241.google.com with SMTP id z9so7134061ljh.13
 for <openwrt-devel@lists.openwrt.org>; Thu, 04 Jun 2020 06:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=C+KsYTeSQtX7G893vG4EP9TRzQXNNE+K3PqDfu5TkI0=;
 b=dbyIEi8MxCb98KWpnknUpEpJ0GasHCMF+B3dHLJn7LS4kHQupKNiFyO8fFuuSlnCSY
 KPMNYk8PIr+qN9WcAx1yM7FJL97kdzBoc1+e3cVM10eSSXOd7fStqAfZhdiOBb3J/d7h
 MP/6i85HNvOSHL8p9InHvZOfPZgKV8SOnOpud1fNNLu7HjbfQRkj6mMvsLLXndlci+kt
 8Mzjw3ovK6Yyy2ZFOJ/xr2ly+qoj9bi/7WuW31YoW1VGr8hbZwMackig0JMw/YlBeLKu
 i/t4c0mX8jliE1S55n7KAAGW3aEzs0QI1RjE1RyuqCzIC3nW0gw9BKxbj5CD5YFd6p39
 kxXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=C+KsYTeSQtX7G893vG4EP9TRzQXNNE+K3PqDfu5TkI0=;
 b=HK4T90wyzhmkRP2lIANITm/2fIQyJJhjsm1AVyNCsF6T8pviojwohKXjnUFmBQ3t17
 PbodVjkcr4Ypip0lpEUov5b2k2VU7+vawY/zm/clWEPjnds4PJ3v1y7CtAzc9Ax0rHNw
 CnTmTQN3KqyxXAW/cJ/sAF/Kst6kCJff/qLSKDvjIjMBl6pRHZDiYRiA98vElPMDzSOK
 kPSInD+0S/588mw15vG32QIcd8Zs/oElvap2bBPS8KyGoEVyRqvmna9WPTC4iN4fIDHj
 pBKIDGsqtOFVaiHV3TCemi3xqcyIG2RWkqkM8C5rP0g3ftSe8wfNOyX/MTonOgsc06R9
 wMSQ==
X-Gm-Message-State: AOAM533iPKjrUoXh2qOWaFd4Jq61yORs0iPfThiNF+P6VESeQKJpdR4K
 25LxYwzX8nSyrUdi3gvDg1X6gWKr
X-Google-Smtp-Source: ABdhPJyXbl6aNXtWJbpFVIhuNJGTPw5L7+9XPZcuAM1xu2hnt0GLzqZ6Gbvh/Sxc0aBbAxKD2qSL7g==
X-Received: by 2002:a2e:1311:: with SMTP id 17mr2140149ljt.122.1591275770492; 
 Thu, 04 Jun 2020 06:02:50 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id c78sm1765457lfd.63.2020.06.04.06.02.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 06:02:49 -0700 (PDT)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 054D2kJi001006; Thu, 4 Jun 2020 16:02:47 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id 054D2kcP001005;
 Thu, 4 Jun 2020 16:02:46 +0300
Date: Thu, 4 Jun 2020 16:02:46 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Stan Grishin <stangri@melmac.net>
Message-ID: <20200604130245.GO24504@home.paul.comp>
References: <CALu2O0Rzyg+Kv7h=tX7Gg9s9shPAUtb46oLsYpD61OYZ=VYsLg@mail.gmail.com>
 <CAJQUmm7Pf2e+P+KLVPQsL2pU=WC6b2z734e0LObjaGeFviKAkw@mail.gmail.com>
 <CALu2O0TWrDkEZUXmrq2U16Ej6m-Rwhhwdr-eW5FjuitUu-FCag@mail.gmail.com>
 <CAJQUmm7XTfcuiTQaGo=w=f9XyTMxNFu8jfw6rxHr8PyEE-pGJw@mail.gmail.com>
 <CALu2O0RUvLaTthbO_jbB=zH-4Cx6ZsGz+nDF8kqfd1Z3Dpc0vA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALu2O0RUvLaTthbO_jbB=zH-4Cx6ZsGz+nDF8kqfd1Z3Dpc0vA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_060255_139856_CC5831DD 
X-CRM114-Status: UNSURE (   5.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [fercerpav[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] base-files: add list-enabled/disabled
 to service function in /etc/profile
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 Michael Jones <mike@meshplusplus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thu, Jun 04, 2020 at 02:56:31AM -0700, Stan Grishin wrote:
> If there's a one/two liner to figure out if a service is running or
> not,

ubus call service list '{ "verbose": true, "name": "openvpn" }' | \
     jsonfilter -e '@.openvpn.instances["foo"].running

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
