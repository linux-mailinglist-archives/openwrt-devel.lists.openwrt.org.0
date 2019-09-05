Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E24EFAAD9E
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Sep 2019 23:10:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sHXX9XzZTQMuP0RW9DwiGJDc6v64mnD6fOZ4yJnAk3c=; b=IpnMX4Xlt7OWwE
	zzNxaGOpOr8ee/CUy+hQ4Qn+rAGZ9XNHzdlumvsRoi3lqAsof5bdJC0z1m4o7UG6O/nAW1kmtopin
	Nt+AiKOr1KBZ9SAe7oooqDrePZ+XlOmEwjpDm5TWeTjy0lqOyNWpwSeqBEHUDXuiC8jUeujDm6CcR
	QbQEKoiVIS7bMLfcQZgqrG1xYtU9WejA57WX0vlIfIkJlqsZMXjAmwkAmLf7vwiBq8Qm66U/3trZd
	0sfHD75/ZmzPlbRznOs6bMkzlXuXgi4tYIXR2yhbTkXV0GamGZyTMvHliJq4yXPZt7r4S8VrwtT4/
	3QQePbehILjFlqMza5tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5z1e-0002yF-DB; Thu, 05 Sep 2019 21:10:42 +0000
Received: from mout.web.de ([212.227.15.4])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5z1X-0002xs-G0
 for openwrt-devel@lists.openwrt.org; Thu, 05 Sep 2019 21:10:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1567717829;
 bh=aM1uSCB2ed5xwNnqUVxooVYJh3MalTaqZVWkOMnjLhU=;
 h=X-UI-Sender-Class:To:From:Subject:Date;
 b=CInNb7RjinpRcHgpcAtlLR7zf9EuZeJhlJbU5OXCu+YIPLWttuWPQqyH2G3XsUth3
 R9WUlSVjW0O5mJLiiiMmAiDnjVWUxUMNaF7eNwPss3o1J3kjymxLDK+gYyB0qAE5HG
 zYE2ledQ9benYAnCrYDrjI45PagnMAbiB1QnWEJc=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [172.23.43.123] ([195.160.172.42]) by smtp.web.de (mrweb002
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0LvS5r-1iF5nC1j99-010e6a for
 <openwrt-devel@lists.openwrt.org>; Thu, 05 Sep 2019 23:10:29 +0200
To: openwrt-devel@lists.openwrt.org
From: Moritz Warning <moritzwarning@web.de>
Openpgp: preference=signencrypt
Autocrypt: addr=moritzwarning@web.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <3e1213ee-3b6d-1230-a94a-610fcc8dade9@web.de>
Date: Thu, 5 Sep 2019 23:10:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-IE
X-Provags-ID: V03:K1:7JSLRuktkMvNaI+y0J9ES2dVqp9X30H9pf32IDLhmSkkn2+HYcx
 G0g+wPID19hMeKnfRTxrTq/O7yKxTwqxQrP1Vz9WpEDSzSso/WrnUSiVz8ZrApi8V7pKxLU
 +rV8tzVMttC0xWv/fDhAJloj7KRAANtljmYzGRcMxALtKNgEpYuvL16p/vZbb3JYNO5MHH6
 Imy5YxvedfHwYaMTPImuA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KFqAzbxuJB0=:SqheDL3Q71dVEXLUsthKYJ
 LflxdWnqKVeJZKe596Fze9z1ItcMzEuomn2wZYbplmfNmGBHma+9qWu0dCNaQU25Ok5EPQx3B
 RxwDA42BhAaQTRQxgZr2xTWZiIkg9u/MPlvKHQfSKS3v5dQyILaTjWfaXbmub4XnI2tmUYHRA
 wXq7aFSbYMdO3P3+IylGhqiRB/zWd0YN5MIUPOSv95qPmu6nuiAd0UOrbCWDPgwQ950mssNzu
 JQKLJ5Au91vDT4AcdfMrBVses9YCqVpbwcqrl/yOG3owSs7V/6sjDf/fdPfmIuq+J6CDqLDb0
 i7LN97+/B3hJCWj379+GZDkK0x+OuweplqJXSn0zEXn94shMmTZ7uu5yIcB7JgDEEwPN3Lpmh
 hcHGEVDeQi6fJ1XpkHRyqL2v0MNyY/9qdyvIIFbuS/MvAsqv4E49GUk0wv0d+DmzmR4jpsiJC
 VOv6KXZ5mHl6JFd6cBR2O3nm6CKWyxjOn2peUta6Sp3zNjCi7JFxZHV77QLZ6yd7cOnn3eFI1
 XeIYctqw5DzvkuzQShcolXHfmpEc4fFHLB8Dq0w9CgGS8xl7oQRMDDH7TPHaa+h4YVbDMETDv
 sm7jhmaOPnXmfrG/cQtD4CJDt0bj9oZyN4RLy/8PxEG4kTp4I5WabXnZsibEEF9xNu5RWVcSI
 dDHDZTabb6a2Y/mBF7jfXbmAEGlTOQS1dhOm45AuuQb3dNQBU8AVeNW7q/3hKvzj64J54kDDT
 8vkdahhwCJRpuEraJaZrLq7aj0XpvJ/Lh9Qi3JwUTwVSBQ6B/hcdfLszvrC86JTWM5mQGb+nl
 nEhB3Mw22NvRfOpU18y2K308ic7zpqTXxDuV35TqAJY097S2N0fL74tTRT99st49hl3Ex7NVK
 drq9KS4taROZrVfHWdLHVZE/XH2t4kGB7QGr7rUeD8eN6Nb1Jbj4FFrOaV963p3IvxreRwTId
 h5bcNZwcwji7NBBNHcvjev2EU400zGEbudII9sZOQITqIBF4GYxMMzqonL5XG5DuDnufwFCxL
 kd68P7oSyDZEOiruLCUQj7Y90ohJi6IJsgrcQQ9Uw0N8B5K5s14Cd7uM04MgVPZf2S6Y4qZj0
 5VcbNPV3Ypq+nj29dYk+/DFHqaj4Q3W80OeS9PjDQy2I9ACJFYJJh4W5+V1BNTluxxMneSSai
 fhow9L0yvpkNB3juffNmJ3HBb0VdQBTfc5qTjkpmUhJKRMgoB52Fn8JF+9NMZjRD2l4ZJzaSw
 Z6Q1BJQ3g/jQrkjti
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_141035_872094_AC1C2570 
X-CRM114-Status: UNSURE (   5.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (moritzwarning[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] zerotier license change
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

hi,

I noticed that the Zerotier [0] changed its license from gpl3 to a proprietary license [1].
While they like Zerotier to remain packaged in openwrt/packages, I wonder if there is a conflict with any package guidelines.
Anyway, they try to clear up any confusion and like to keep it open and publicly available. [2]

The basic questions is: Is it ok to keep the package in openwrt/packages?

[0] https://github.com/zerotier/ZeroTierOne
[1] https://github.com/zerotier/ZeroTierOne/releases/tag/1.4.4
[2] https://github.com/zerotier/ZeroTierOne/issues/1027

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
