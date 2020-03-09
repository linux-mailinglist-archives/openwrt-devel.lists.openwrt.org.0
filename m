Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE7817E85F
	for <lists+openwrt-devel@lfdr.de>; Mon,  9 Mar 2020 20:27:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=asNw4JIfhqRM6X/3mOvp2noGHvMlnyOqhIBjwvl4KQQ=; b=I3v
	Jv3ajHDQSYNV3GWLKvs+Lr5I+EQzW4I/LiUfL/9DroP1Nw1JQ1zaigKpdr969vdrAWDjMDAaGveRC
	05y6/SOAbPt0ORIE8AHSFDrOEAw0Ux+3rZvym4/B0GPBgDzFhpjhhKd92YGcSQZNVw2q/CQSkqGz4
	E8gfucpbsTXhlBJR7HpuzuGeJ1zh9AfDmEp9ew1HhC+3G8qm1HF3XyrhPNZDNBGLbrXinC/CngxUt
	lp4HebkWrdXQJbHiMe02WvO69OoDkI48jKOlNSo29jq22KLupDuAESGtxOkJMh8AcpuX1LtCR6rx+
	rW/hh8iylgqn2ax+BxJFqp/Qr5rqeOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBO3c-0007bE-Ik; Mon, 09 Mar 2020 19:27:20 +0000
Received: from mail-il1-x131.google.com ([2607:f8b0:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBO3V-0007Zb-H9
 for openwrt-devel@lists.openwrt.org; Mon, 09 Mar 2020 19:27:14 +0000
Received: by mail-il1-x131.google.com with SMTP id o18so9748471ilg.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 09 Mar 2020 12:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=W8vxS0prteq14YBM3bwMI0Of9kgJq+CJGHpnXtDBzws=;
 b=Eb2YBLi3BRzUbW7btz64pIEeohtZmfLIK0wWgypCj9DQvItNNRaE5eTNYQtuml8e2v
 LuuU5YPvY6FDv3UplHWqqjy/fH4fDY4RYc2+HYciHD03RcwI1VVFb9AEYEGPFDZvdmPJ
 ySXgzqiwX+7R4nbBhLa9fYhQRfVJCE12YQEhZHw004siOKCQvhKBwMzJJOTBqYAlPRni
 h6T81bgnqktAnrvETWJ9z4MQ27x7LYDKgwG1iJR4LbF+eyMuKtngf3oNioG/g5glcWhm
 9BoKe9DsulqQUU6VviMYByWmJSoi1lcFm4jPpMEQaLyAhHSD1moCwoLNpIiQljdLftSC
 /v9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=W8vxS0prteq14YBM3bwMI0Of9kgJq+CJGHpnXtDBzws=;
 b=ZBkc+MCQPQaboajAzQIdrrwhvwU5UeZIPbE2sUlSa2Hg53f3irWzEmzgAKpQHxsR9T
 1Z695blgF1hfsnpdPw1OCntKZeMp5+k0KWNw+JNW2jZYX1PA+5DjPkFNcn+53ggL25Eu
 ElZei4X2jcaK704H3oyxH1Cmwa6ca/2naIuedHim0YOysoqVwLVjarS7zf1UocIc2ohl
 NymQJGlvize0z4dorHSvfL1jZJT0/19/s8BESX0rL6DtCONuSHZ+ze6ekzjZroy5hyOS
 F/U3vklFr9thxuQJVH/KYis7HuoqCElGsK8kvyKnsVTCMY9iR0NXMc1oT3Exk5TtDcOg
 oLZg==
X-Gm-Message-State: ANhLgQ2u042XsKPGOQPEUAPIqfpa9Szlf3+7X9V/GnC6ON8XJcd9I751
 tc10lp+sRw6twp3KUhPpNjHkMKHq9t/n8Fb3aBOBhh8I
X-Google-Smtp-Source: ADFU+vskfIZo4tGtAS02Oyot7taHzIw2D9jm27gaNq2GBdtuc/Hc0V44w333mBB9UzaLQCSShxoQMD0vdUnTwMr3xTM=
X-Received: by 2002:a92:c004:: with SMTP id q4mr2868834ild.248.1583782031529; 
 Mon, 09 Mar 2020 12:27:11 -0700 (PDT)
MIME-Version: 1.0
From: Ansuel Smith <ansuelsmth@gmail.com>
Date: Mon, 9 Mar 2020 20:26:59 +0100
Message-ID: <CA+_ehUyO5Sw4y93BpBcdYBGmUu6MceMQ7iivmry16xfxN96Vug@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_122713_571237_44AAC436 
X-CRM114-Status: UNSURE (   5.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:131 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ansuelsmth[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] Switch cake sched to in-kernel version
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

In kernel 5.4 sqm is currently broken as an older cake sched version
is used in openwrt.
As 4.19 is used and 5.4 is being tested, it would be good to finally
merge in master this commit.
https://git.openwrt.org/?p=openwrt/staging/ldir.git;a=commit;h=60abae09075a02a7ece6c3cbf74512736ecf88c2

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
