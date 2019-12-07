Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DEB6116308
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Dec 2019 17:26:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:
	Mime-Version:To:From:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kQB5vHOAt6mMyJ5rbAEyH6l5+4dQ2nFrj75eijuqarE=; b=kMd
	ryALwC8TsbWez+Qa3GsDZh9GXFvR8JTVkVVHadhvIULyXMxVGeksw4tArLLzMQRfIXqocLB9Omj4Y
	Vkd/Go9BdiJNKLjofGnQJhwkCIw198ladqNvWGm/iopGZNKq1mNt5gVNq4yMsXAK8ERjZ97wDZd+x
	aG1a+kjbz4liVdY7wu1JIon5SaK6AZdJFRXnepxur1rEdgIbYrqYvKsNRmfHBtajK8rf3O23Qg45M
	ybI+Ocm5VMhmR317Iwxm1JcFrA4h/HpFmRHVhSKOJVGbySLCYDNZOeV9o6sdyjK9NwvWSQedkcDOB
	ngjQlXxoq3xg8s4XaOb5i8nCFPLYrBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idzOR-0004Cs-CR; Sun, 08 Dec 2019 16:26:47 +0000
Received: from malta2576.startdedicated.net ([85.93.91.176])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idzOK-00048v-28
 for openwrt-devel@lists.openwrt.org; Sun, 08 Dec 2019 16:26:41 +0000
Received: from localhost (localhost [127.0.0.1])
 by malta2576.startdedicated.net (Postfix) with ESMTP id 511FE3C5F72
 for <openwrt-devel@lists.openwrt.org>; Sun,  8 Dec 2019 09:06:24 +0100 (CET)
Received: from malta2576.startdedicated.net ([127.0.0.1])
 by localhost (malta2576.startdedicated.net [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id QjrAQzfnDw2f for <openwrt-devel@lists.openwrt.org>;
 Sun,  8 Dec 2019 09:06:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by malta2576.startdedicated.net (Postfix) with ESMTP id E124254E63B
 for <openwrt-devel@lists.openwrt.org>; Sat,  7 Dec 2019 16:08:18 +0100 (CET)
X-Virus-Scanned: amavisd-new at malta2576.startdedicated.net
Received: from malta2576.startdedicated.net ([127.0.0.1])
 by localhost (malta2576.startdedicated.net [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id 7RV4Vfe35Tzs for <openwrt-devel@lists.openwrt.org>;
 Sat,  7 Dec 2019 16:08:18 +0100 (CET)
Received: from 10.0.2.15 (malta2576.startdedicated.net [85.93.91.176])
 by malta2576.startdedicated.net (Postfix) with SMTP id 0EA0730C810
 for <openwrt-devel@lists.openwrt.org>; Sat,  7 Dec 2019 13:19:38 +0100 (CET)
From: "Anna Papadimitriou" <wseas-team@wseas.org>
To: <openwrt-devel@lists.openwrt.org>
Mime-Version: 1.0
Date: Sat, 7 Dec 2019 14:18:29 +0200
X-Priority: 1 (Highest)
Message-Id: <20191207121939.0EA0730C810@malta2576.startdedicated.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_082640_250919_47F5AAD7 
X-CRM114-Status: UNSURE (  -0.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.8 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [85.93.91.176 listed in bl.score.senderscore.com]
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
Subject: [OpenWrt-Devel] "Energy and Environment",
 "Geology and Earth Science" "Advanced Materials"
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
Reply-To: Anna Papadimitriou <wseas.transactions@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Dear Authors,

We would like to invite you to submit a paper in the following three open
Special Issues:
"Energy and Environment"
"Geology and Earth Science"
"Advanced Materials"
that we organize in the Journal: 
WSEAS Transactions on Environment and Development 

The Review of the Journal is organized by the Editor-in-Chief and many
Associate Editors. The quality of the Journal, the acceptance rates, the review
process can be found on the web.

http://wseas.org/wseas/cms.action?id=4031


Deadline to send your paper to me by email
(wseas.transactions@gmail.com, support@wseas.org)

with the correct Format (Our Format
http://www.wseas.org/cms.action?id=4045) is January 15, 2020


Do not upload your paper via the conference web site (a procedure which
is for regular papers only), but send it to me by email.

Note that this invitation does not imply "a priori" any acceptance of your
paper. It will pass via peer review by the Associate Editor and three reviewers
and can be accepted after minor revision, accepted after major revision or
rejected.

Another important Journal that can host your paper (also after strict peer
review) is the: "International Journal of Environmental Science"
https://www.iaras.org/iaras/journals/ijes

The review process is equally strict in both journals.
Do not send us "conference papers" with small number of pages. They will be
rejected. Do not send us paper in wrong format. Send us well-documented studies
of long papers with the correct WSEAS format. The papers in their entity or in
their some part should not have been published elsewhere and must not be under
review elsewhere. We can check it.
If you want to send me by email an extended version of a conference paper
(published in a WSEAS conference or elsewhere), note that this paper must have
different title, different abstract, different keywords from its short,
conference version and must have 40% additional material.

About our review process: http://wseas.org/main/author-testimonials.html


Best Regards

Dr. Anna Papadimitriou
Dr. Kostas Chiotopoulos
Prof. V. Niola (Editor-in-Chief)
wseas.transactions@gmail.com


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
