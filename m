Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA9095D25
	for <lists+openwrt-devel@lfdr.de>; Tue, 20 Aug 2019 13:22:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=waecSazCrSHHvlGuY04vBumpXLLe21QqER2MB8Sphfs=; b=YGvXpv9ZUEgnA8
	wEoaM74gCinFq1ervA+dG8jc2kdsbmCVKsmVc5UH9npJkmBOpSgSJMA2jbt8Nt8sItEiavvO5BDBy
	ege6zC5MSBIEAdN7q0ViGJEZRNhn5qVW+VLOdufmES3UX+LEb+5Dca9J+KWtvG9AH85HhCNMHogpa
	S0DIF1xsBcwx+S/Vr26aeMI1aUq7iDSceD6v1MZFRiubUOm1dmXHRY12LNu8J8005eRGWf7YhTpyM
	i72oGrrGfjobgw2PFVMRMlMdpWO26on1GnPCeuxQMevQq9pECjbNT5lgd7OMzFRRsvRMKhCxr1Cwa
	TJmpZRb/pbt0J2KQcXng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i02Cs-00050r-OA; Tue, 20 Aug 2019 11:21:42 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i02Cd-00050U-SR
 for openwrt-devel@lists.openwrt.org; Tue, 20 Aug 2019 11:21:29 +0000
Received: by mail-qk1-x730.google.com with SMTP id m2so4112213qki.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 20 Aug 2019 04:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:content-transfer-encoding:mime-version:subject:message-id:date
 :to; bh=H2kTfRevLquFh1FsJlH7t4yOH3bxlPjlOueor6eprqY=;
 b=XryDyzPupTNGxcl6x8Sjmf04meppmx5CaKwA0MJ+P0EAPxJNXb7H9texpaLsMSwUyx
 PNaA4ccoS6/dPfWCi+fnMtt8oFAHUkH/BGvJeElb/RPmnz+brjOAxwoE66A8vRQQfcvu
 7o024S7EaWdBczk+U/ILBCUaPcVXDKSLbQD64qSi2evICc9N6FxttWznPcCpetr4Ib9F
 5U+oPUoMP1AqTsUGVZRSibmBA6XMtuPuqT5OjcPRjCHfGvW3HCQjOyJFjwqb0uPwArMO
 lbg97B9vp46EiNL59A0safHHDtZQGE7p9f9L8TMkoHSB13GGkFdw/Hq7eiLvJjfUgrKn
 3DuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:content-transfer-encoding:mime-version
 :subject:message-id:date:to;
 bh=H2kTfRevLquFh1FsJlH7t4yOH3bxlPjlOueor6eprqY=;
 b=K/HenI895pKTpHylr6HS1sQX+QZui260xTP8hlROCJWjm8ZmCuuBQgAWM7mSCFOvnk
 VIi27bMqYosZRe7SNjutFobScSeZKYC8VfEeZUO8qVgmby/rSD5P/Crl1O4RGmLI2Pxm
 g2eUrKVqcQyzRlRRKE+zs2APzKe3tarqokxNYdk93Cpbr/lN5Y7bt3geF8D8AtIt6KSV
 2iKIHzs+iHYW1vUw3KwLLJQpSN9Nrtgsd8W6CD7elu7l/YkuMwYOz0O9DcCt7VN73KGF
 PZ8vVcesSK8baWA2wLDlFdpPNhGO8f00dc6Vwv+B/CsGwHxFUECAVzIyJNcGLZncwqQU
 qh5w==
X-Gm-Message-State: APjAAAX85zeQKrGho7nOp8ThfVDYk01X+r8Jg5RHeBqLCEX5b6Nal3zn
 dVMQOktzZxxuyFiqNIaqB5XigTvj
X-Google-Smtp-Source: APXvYqzD/0U5G0jpl0LQDiE1PVwXqVWnsqv2jQPIbiuYSr2S5HuVXB9qbVQW2dRGXqhhW2W6o8ZOkQ==
X-Received: by 2002:a37:4e13:: with SMTP id c19mr26092597qkb.370.1566300086036; 
 Tue, 20 Aug 2019 04:21:26 -0700 (PDT)
Received: from richs-mbp-10337.lan ([70.16.98.90])
 by smtp.gmail.com with ESMTPSA id l18sm8120998qtp.64.2019.08.20.04.21.25
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 20 Aug 2019 04:21:25 -0700 (PDT)
From: Rich Brown <richb.hanover@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <859F4E11-840B-4BDE-AA3E-0BA3FD461620@gmail.com>
Date: Tue, 20 Aug 2019 07:21:25 -0400
To: openwrt-devel@lists.openwrt.org
X-Mailer: Apple Mail (2.3273)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_042127_946820_7CE502C6 
X-CRM114-Status: UNSURE (   3.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:730 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richb.hanover[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] Did they check security of OpenWrt?
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

Hi folks,

You've probably seen the Slashdot article about (lack of) security gains in router firmware. https://yro.slashdot.org/story/19/08/16/2050219/huge-survey-of-firmware-finds-no-security-gains-in-15-years The original article on Security Ledger is at: https://securityledger.com/2019/08/huge-survey-of-firmware-finds-no-security-gains-in-15-years/

Two questions:

1) Does anyone know if the researchers looked at OpenWrt?

2) If not, how would OpenWrt stable or snapshot have fared in the analysis? Do we enable stack guards, ASLR, etc. on all builds?

Thanks.

Rich
_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
