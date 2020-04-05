Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB1F19E9C5
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Apr 2020 09:47:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=P6eTIjURkKBUphVyW2cmDv15zigF7KHV49jsM2juXi8=; b=k24g/BDB3nRdT27unMZhrzAZQ
	l9JrBJYshnebrBBs4NOgF7KodyrhTIQDlSIdypHUyEep51v2hGF0w21uKXafevbhhP/FzEjyCQZAq
	46eb194Xmsazdd9Q9bPuQgTkvbcwEjzo89zfp0Iz0tgLSRDIdWWm4MvOBDnadK0wtsOxJsMPvYoZk
	rZt7iz0VfQkHrl6PjSwZtjIPYVo0VG5pQsP4Rov8VNmOP77Nkddo+53oGXuxnV2aSy8oZE7ipKQOd
	opaWbA8JU/yCAoY/DE5gybVr4PDASoPds2DrjWKOVvk5/QmuehIfWKwEiuWDHe873PB3rzGhdNg6T
	cI9pINWnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL009-0002nh-Ro; Sun, 05 Apr 2020 07:47:29 +0000
Received: from lmr1.uibk.ac.at ([138.232.1.142] helo=smtp.uibk.ac.at)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL002-0002n6-66
 for openwrt-devel@lists.openwrt.org; Sun, 05 Apr 2020 07:47:23 +0000
Received: from mysh.local (ip5f5ac5e8.dynamic.kabel-deutschland.de
 [95.90.197.232]) (authenticated bits=0)
 by smtp.uibk.ac.at (8.14.4/8.14.4/F1) with ESMTP id 0357lGDa030342
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
 for <openwrt-devel@lists.openwrt.org>; Sun, 5 Apr 2020 09:47:17 +0200
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
References: <20200327123608.198650-1-peter.stadler@student.uibk.ac.at>
 <CAJLcKsH=8d=7DXQ8LzM6LV_+eBuRNzGUzG2_urrFF+E-Q2xA3g@mail.gmail.com>
 <004c01d60ab1$538a73c0$fa9f5b40$@adrianschmutzler.de>
 <CAJLcKsH1qgQOoDiAZg=iBkKRoHkhyk75ifArKQpFjMLgJensRA@mail.gmail.com>
 <009d01d60ab3$dc783ee0$9568bca0$@adrianschmutzler.de>
 <CAJLcKsEnWof6G=Ni1qNukUEd9OyDQAQX0MsZMd7EzKPRXuMXCw@mail.gmail.com>
From: Peter Stadler <peter.stadler@student.uibk.ac.at>
Message-ID: <9dbc4c36-057c-79e9-7d01-42007733c936@student.uibk.ac.at>
Date: Sun, 5 Apr 2020 09:47:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAJLcKsEnWof6G=Ni1qNukUEd9OyDQAQX0MsZMd7EzKPRXuMXCw@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: () -15.0 ALL_TRUSTED,RCV_SMTP_AUTH,RCV_SMTP_UIBK
X-Scanned-By: MIMEDefang 2.84 at uibk.ac.at
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_004722_541810_C8442FEC 
X-CRM114-Status: UNSURE (   5.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [138.232.1.142 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [138.232.1.142 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 2.0 PDS_TONAME_EQ_TOLOCAL_SHORT Short body with To: name matches
 everything in local email
Subject: Re: [OpenWrt-Devel] [PATCH] netifd: fix 14_migrate-dhcp-release
 script
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Removing the line should be good :-)

Beside the error message that `commit` is not found, I experienced no 
other issue.


Thank you

Peter


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
