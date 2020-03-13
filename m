Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B6F184961
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 15:31:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BuJ7IGlZxcRFdOj8Jvm9qf7hUQyw0SR4Sxwwa678Gp4=; b=dsQsWWNWXfiVG1
	Jc8TQO5jBzqQEaMHA7UFS7VeF9Kkhtcn+lV0y5EDbzLhhs/xliPs6tdvHuFPzPh/UTocIfsYRRKW2
	ap5STFqXSU6g3tVak8UoBgQqCypGYtVkKB42o7XAxxWuRDNdyv1Zib9iCI9Igu3zEMXd01WTwu4sv
	a15et++oM+K8I5pN0+Bzl5Jtq6zJLLh0L6DD32WML2QhvUnNlOfD3fDeqDsbPMnsa2Z/tna6HeLZL
	5xYX+rJWk9Ovh7lp9xkkBgH39fMINyB9fE8fMPYS3K/M5K/2r0GWqb9f6oRchBoBYXJ8VoCijpUC1
	dpnM9+CSQQBUpMG13DeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jClLo-0001mO-L5; Fri, 13 Mar 2020 14:31:48 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jClKw-0001C9-8F
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 14:30:55 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MKsSj-1itquC2Lnh-00LBqE; Fri, 13
 Mar 2020 15:30:49 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'mans0n'" <mans0n@gorani.run>, "'Catrinel Catrinescu'" <cc@80211.de>,
 <openwrt-devel@lists.openwrt.org>
References: <20200310120204.6704-1-cc@80211.de>
 <00b601d5f6d7$0a1111b0$1e333510$@adrianschmutzler.de>
 <VI1PR0302MB335814CBB9F315217C149B87EFFF0@VI1PR0302MB3358.eurprd03.prod.outlook.com>
 <48e03485-88e4-3b14-f355-de4f16ba3af8@gorani.run>
In-Reply-To: <48e03485-88e4-3b14-f355-de4f16ba3af8@gorani.run>
Date: Fri, 13 Mar 2020 15:30:49 +0100
Message-ID: <00c001d5f943$fdec3b20$f9c4b160$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQHICgn7ax1xXH0zRdEKD0ZMYgzVygI5vo/2AmhOx/0B9UUenqgtuR1A
X-Provags-ID: V03:K1:B2+g/1ZKSep1DqreNDFNC3eDxrP8A5y7+UjD0R+OLLuCIFx+utq
 gFoalpv7EZ6ZjCGLBX/tQzGp1O0glzn6SkjS4afSFHibFvozhCi7QtflnkO1t39nXVw1GhT
 pGcspWutcerA/DS+w/FBiicRboJvKbzRmyoQ9kUwj/ImeD6GUK+DoIvdJV+td34X1cpAbWn
 OkR1lSQSrYzzGCoJGv+aA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:EwSumGxpUlw=:6xF0EO9hQOwxxdEV37Ynx8
 FYLbvl7CJ2ySn5HQ+j8p3rVzukLJ5j4idlgA2pL+pz1QtecGuoD1yHwqIP6VlGYzkmd4CcB7T
 Pj3lNVm+seklvvATLuzMMihUYQqvetTTIC2QKWY3w+rLwmw8NMxxnfJuk9PIHhilvGuLp+9hM
 hOU4PsGG/RIPM0nGFv7ppuDdg1GoONCAF5bccpkVvxnycsycxe9ECVLxdz1yVKT01OQQ5gjgH
 Lt8yiXT9p7QKGl7hBIiL6WA27eHsr2gh/sVXpdO3OAYKAECUdendchVQUYwWnFhBGG6lO/diZ
 vJyxOhOCby1N4Puge/ttgaoU2VYl3ixrzP3rPluyfj1lsVadl19Z3IAtl7KHWic7/2Qltx4sl
 rBQ9m7cRoirwtaPw646J25WocW0bgHJZNMUsZS/rip3doBTxwAz35F8EL7ly8QSG7hefzHdyO
 zpDtT6fTtWH+iK9MxHwsBiwAL3Bf510jBe6G6fKWph3GCa4CGTFv35TA39BwafKdEm4/5hAHa
 fOx25xtxpvDSeAtF9fpJJ+IwPkfp1HASSItoAbW71RzGIGLJ/77m9Yda5DgJDNJxG5sEPEVaT
 SaHrsTxy4cu2APlxpJAdvboluZMEo/id9recZnnIuAmu2KJWtt6mOaFQCMa1pThyvEbAxM8gW
 hdV3Qbcj1Rf3xbNz0TO/eslAHk6qvk58Yt5XRZjJrq/TFzoeLrVBTAJme3E97WxA6xgPGoKRT
 Nt0JViPHwPcQid/SMnrlqkaOlCEZbM3YH3sz1JrVtE/6v1sdE9EMi59UQVYcx2BXGDyA1PUkW
 viaUHemWRBsUMWIVFR4N7hYB3uIAaRYEatpgZXcjj+/lvCsRKnrgRnXKviATXiLRu4TQSRY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_073054_583563_71DED959 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] .gitignore: ignore all .config* files
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> -----Original Message-----
> From: mans0n [mailto:mans0n@gorani.run]
> Sent: Freitag, 13. M=E4rz 2020 14:26
> To: Catrinel Catrinescu <cc@80211.de>; Adrian Schmutzler
> <mail@adrianschmutzler.de>; openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH] .gitignore: ignore all .config* files
> =

> Hi,
> =

> If we are going to accept this patch, I would suggest "/.config.*"

This would require a separate "/.config" though, wouldn't it?

> instead of
> "/.config*". That would suffice for all local usages.
> =

> Thanks.
> =

> On 2020-03-10 21:33, cc at 80211.de (Catrinel Catrinescu) wrote:
> > Hi Adrian
> >
> > After successful testing, I always save the .config files, attaching the
revision
> number, like .config_r12345.
> >
> > And it is a cosmetic replacement too.
> >
> >
> > Thanks
> > Catrinel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
