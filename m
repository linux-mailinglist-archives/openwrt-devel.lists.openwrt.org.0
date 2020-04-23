Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC69A1B6151
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 Apr 2020 18:51:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:To:From:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ahzeg/noCG7hoslBaia6sC2VoptwcO9GyPtV9VRUBJw=; b=hZqQ/RtWqVhIrM
	HjjwH9p163cWUH3F2sPl1l/ltVuOX31LIuGGSr4QOSY9jH1guP3UrsppxAyGMW1NEPeIOH0xcQnEO
	qXh0DzjuSHpYzMlMe5o25EB0EfHS3dDeISYpdhbwDaWgjAo/AzQjOgSo3Fjq8L6prOz9RSHh0yQAr
	riRlkda0f8m2BUXPfi6vAZ0Ie0MgKIEx4UZIWGf83u+L77fPemrDggi3MyuK4ChxkfNAmI9ZHS96x
	Zc/H2Qeus94W82vtxahoCz0Q1V7MDaV5Po/LYluVbGKqoff7vH+0TTHZYZUYgQUkWwG3uykSLFS2z
	KEAFk/4RrUMhxCvZlcyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRf4D-0001i6-VQ; Thu, 23 Apr 2020 16:51:13 +0000
Received: from smtp-auth.no-ip.com ([8.23.224.60] helo=out.smtp-auth.no-ip.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRf47-0001h9-Df
 for openwrt-devel@lists.openwrt.org; Thu, 23 Apr 2020 16:51:08 +0000
X-No-IP: flyn.org@noip-smtp
X-Report-Spam-To: abuse@no-ip.com
Received: from www.flyn.org (unknown [68.134.18.32])
 (Authenticated sender: flyn.org@noip-smtp)
 by smtp-auth.no-ip.com (Postfix) with ESMTPA id 7740D3B3
 for <openwrt-devel@lists.openwrt.org>; Thu, 23 Apr 2020 09:50:51 -0700 (PDT)
Received: by www.flyn.org (Postfix, from userid 1001)
 id B22862600111; Thu, 23 Apr 2020 12:50:50 -0400 (EDT)
Received: from dragon (dragon [192.168.1.231])
 by www.flyn.org (Postfix) with ESMTP id 9FDB42600104
 for <openwrt-devel@lists.openwrt.org>; Thu, 23 Apr 2020 12:50:50 -0400 (EDT)
Message-ID: <443a1fbcb9985a33b54ddb18dbabffc89f67a442.camel@flyn.org>
From: "W. Michael Petullo" <mike@flyn.org>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 23 Apr 2020 12:50:50 -0400
User-Agent: Evolution 3.36.1 (3.36.1-1.fc32) 
MIME-Version: 1.0
X-Bogosity: Ham, tests=bogofilter, spamicity=0.345389, version=1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_095107_472087_8E1166C3 
X-CRM114-Status: UNSURE (   3.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [8.23.224.60 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [8.23.224.60 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] Uncompress image: trailing garbage ignored
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

I have started to notice a gunzip warning when decompressing the
OpenWrt images I build. This is with master df27e949:

gunzip  openwrt/bin/targets/x86/64/openwrt-x86-64-generic-ext4-
combined.img.gz -c >/dev/null
gzip: openwrt-aquinas-git/bin/targets/x86/64/openwrt-x86-64-generic-
ext4-combined.img.gz: decompression OK, trailing garbage ignored

Aside from the warning, gunzip exits with a code of 2. The gunzip man
page indicates that an exit code of 2 indicates a warning.

Is this a result of an intended change? Should I expect this to
continue? Are we sneaking a hash or signature in there? If so, I
suppose I will adjust some of the scripts I use to account for the
non-zero exit code.

--
Mike

:wq


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
