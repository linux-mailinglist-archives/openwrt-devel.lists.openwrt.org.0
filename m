Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64541A4887
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Sep 2019 11:07:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uqjqAGbW7f3/rRwKPSrPOGR+vHpHsNhXGW+MCQuwqb0=; b=YyyawEAPm/1Ypu
	x6/Q7haQksTe+LnSIa3dCjMwy8b9LsfUuDyzFEFal0cPEdSNizczdsoMXeGXQ//yOXvQfFCWQdP3k
	NtUC7qiFSciGid0i20SNuHD5njC9WvMFr4QzG14w3ucDtsfdyf8sMr5Wkt9bQYqLl4hOCcnXrk8Au
	wgh9qlUfSL1h9tWHOo+6t0xl96ceoz1G/r+HZGexR8y3Fusz7W5Uk+j4JxOuf81JEhfQDUfH6FDOr
	ZIkJhZqmQRNIbDpjaodPYBtWW6PMIHqqrR3NkO/xvLXAMN2RpIZECAolI2odmUaTnM6KUrOwWo0kj
	N6vVdKEPXF9LsyDCXZBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4LpQ-0007bO-Bu; Sun, 01 Sep 2019 09:07:21 +0000
Received: from welho-filter3.welho.com ([83.102.41.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4Low-0007Zz-9D; Sun, 01 Sep 2019 09:06:52 +0000
Received: from localhost (localhost [127.0.0.1])
 by welho-filter3.welho.com (Postfix) with ESMTP id 3908312FD;
 Sun,  1 Sep 2019 11:59:51 +0300 (EEST)
X-Virus-Scanned: Debian amavisd-new at pp.htv.fi
Received: from welho-smtp3.welho.com ([IPv6:::ffff:83.102.41.86])
 by localhost (welho-filter3.welho.com [::ffff:83.102.41.25]) (amavisd-new,
 port 10024)
 with ESMTP id WRC22-dzplRK; Sun,  1 Sep 2019 11:59:50 +0300 (EEST)
Received: from [192.168.1.180] (87-100-241-170.bb.dnainternet.fi
 [87.100.241.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by welho-smtp3.welho.com (Postfix) with ESMTPS id 816B02308;
 Sun,  1 Sep 2019 11:59:48 +0300 (EEST)
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 openwrt-adm@lists.openwrt.org
From: Hannu Nyman <hannu.nyman@welho.com>
Message-ID: <fca7f10e-0792-91f9-e37e-db6241a861be@welho.com>
Date: Sun, 1 Sep 2019 11:59:49 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101
 Thunderbird/69.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_020650_548853_2045B65A 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.102.41.25 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] OpenWrt 19.07 release schedule ?
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
Reply-To: hannu.nyman@iki.fi
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

It is now been over two and half months since the 19.07 branching in early 
June. So far there has neither been any official -rc builds nor an initial .0 
release.

Buildbot is already crunching the images and packages, and pretty much all 
targets are green. So there are no obvious build related issues preventing 
the release. I have also not noticed any franctic discussion about specific 
major bugs blocking the release, so it looks pretty good at the moment.

Has the actual release timetable been discussed? When could we expect first 
official release builds?

I think that it would be good to get the initial .0 done, so that the wider 
user base could sysupgrade from 18.06 to 19.07 and the testing by the larger 
user base could start.

As long as the 19.07 just sleeps there while master goes forward, the 19.07 
is gradually getting stale already before the release.



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
