Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C56FE107E07
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 Nov 2019 11:28:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Sip1hWUvUXM2xuYsglhwKrdJiFPdysa9sM3vxu76VM=; b=pkozLobvJgu6ia
	3Zp7jQFNpsb7g+1vNC3ZgCcTk5t+i5q9JssT5eRN23Ksb5AxYJX2usDGhP/hopNAv6gw6GYJUdeRj
	x/YAGZBDw++W1AXT9F4cTG0EgdbRlf/ujEskpBfUAgkuI79ReehgD0oVh2Z2yQmzFV7gVvaznOdc4
	c8rdwL8FtDtpIaNkNyW9ChWe8VnqBjPr4qRuW666J2QdLzWMXvlLDNsYhy5gqTDm3W3hiXAxjCvHk
	nmSG7Jkjowh3rT0k7g0nAacmjqoRB2xswf46RF+rvVMe5YhEiv7DMQUZxpAnFxQ1JFWBJtRpe4E6g
	KAkTK6qFaL+Beyb51w7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYSeh-0007Rb-Rr; Sat, 23 Nov 2019 10:28:43 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYSeZ-0007R5-1K
 for openwrt-devel@lists.openwrt.org; Sat, 23 Nov 2019 10:28:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1574504910;
 bh=PMeFVGXZ8zoLkcJ1WG46HnFro5A6k74MjtV7eXdf2zs=;
 h=X-UI-Sender-Class:Date:From:To:Subject:References:In-Reply-To;
 b=C75bMcAoLV70I8cq2RKhpC4xe2x+vYbdBIhloVhkww+wGF6IavaC0bjbQa+MfbGhB
 jnhk2jkmRNp/rLvleGZZVBz05YJde9GKoCD7YGF05DhsOBNgGXTR7Q3sceuiNdr1fR
 PAMZVru0ovuWbWF4qJoSacgp2GqRb/CWSfsTq8b0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from darth.lan ([62.14.67.236]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1N7QxB-1hkwPT1kU9-017m41 for
 <openwrt-devel@lists.openwrt.org>; Sat, 23 Nov 2019 11:28:30 +0100
Date: Sat, 23 Nov 2019 11:28:29 +0100
From: Sebastian Kemper <sebastian_ml@gmx.net>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20191123102828.GA1248@darth.lan>
Mail-Followup-To: openwrt-devel@lists.openwrt.org
References: <20191123102500.GA1227@darth.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191123102500.GA1227@darth.lan>
X-Provags-ID: V03:K1:iyYO5w/8ALYW1ikycHcSb38yvnik9XO+zKRoNqRhieL0WU7J/aF
 sbNDopO0Czi+1jR2+LyR7K1vSmba6Yb0S7FbyJjQnYOXjKPmoSR26iFw9WxG6TyYCHVtl81
 xcd3pi/dQ6AHEzZ73jezZVz1O4eRarSkvWOSWUqnMUZp7Ful7kLMNcpBTkaAyhvqSMNFHqG
 9BV6C80V7DQHJZeRkRUkQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wGfG8BrcDEQ=:CAq/rENt37vCqUQFT7oJkI
 IfhIneBUOdjVZpDF4U0LOObA009aoW+NBOdXJGuW2KFk+QnNFzWeJzFH6Y3ZPhSWwJgsS72tY
 AlepHHYDxvl9RS1kh5+Fn1BpV9BWktcXwEloYsj65YtjnDmbTJaEHfsNXzdje/7CU27huNdq4
 6TzNVa8vJOrcJCujPVP7ks6LKBrMY1vcbvBZZSIEkzdj7Cr07xcdf1O/j1G58tuvZ7WlWB8Pl
 +KgSJP6JHNBoOAIRozXoH9JL3XD8pYLohtQ55gAk5/QuihuQyrUEdzzBmUh3bO5zYjAp3fTxS
 LlJ+IPv+zkKvj6AbZTWxuXdT3MXFek7KzwcjEvE0gLTXW8xaczGpB84xpcJHkFAXdUHtuTXRr
 MnxrhiSVWVNY/FQIe52NWJCdHwmL+QSshSaX/wIW5JvrBVlk1+lyB3Wtf4xYMa9CtPNoqBL4C
 oi5DL7NWTsJT0uh2xDw+jfh288Hnz3CciEcDplfDojxueseF2PZqeKiOKHEkTat2RVAU/Vxxe
 Muo1YKIUoi4khgsN71/x5kuswhz9+ViNxi++ITInpVmLu4FyRIjiz2/A7BLCkTWJ9ziuKJMSf
 QS4zyZ5xELxfd8Q371ZdZLpQfp30fgFbNUZG1OR628S+JIa4DD9a9wz+aazd3IRm/RPHQBseH
 o9QaPwMEFFFVLouLnNSsVUuAuXSSeh/zkBelaQ6uAo/a+S5PNrWvbXerZ2At2TLL2W/SHwK40
 ksOHe9ecKTqia9rVTicBXGEaebYf7RO09+rq84eCitL/rZekdCqAZNLTKER65aDs8cMKogmNA
 hIb/xp/70yoXLo9420K9n5ZsGXK45Va3s8Yoacd4F+zJHTSu1ZMjKYGSBJlI+imMjX3R1vrS8
 E7GeOKl7gl1vFcwCv0QDFkKs2+FDqS2CKimYv84Gobwnb80YrTdoxJmdou9aM0A+K/WnDj4i2
 od3/xEZXjY2GqGq9Wk21PA0NxQnq/dN4HzjfGYpGyeTlYWp3e3H6lColmrVtpSe3XykNIMsCJ
 TLTuef+pl05Wt1Qo2VfgRJS0TnFLSYBAGYwjIFUMoqq+rESfX0OEBZxbBV3xGatu8IrvIcOzY
 qPUs9GG1x+HT2tjCjznCE/0SFOlBXmR33A2DrEYpusNU1v86s4CNdusTJMk8j4m4CMFv2c6aw
 yBmO4ZUxNU46kU3p3f2iDXniTWPBlFmQLsyfAftGJir/ceK2OPm9+8GpIhiHcVz5n0SQx1nj+
 aAA853XZiC1xUSGGEG13gjmGDo4YWfAJxnbtRrOwkB2fXOsB6OUrShnMXOP0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_022835_376514_79BE8C41 
X-CRM114-Status: UNSURE (   4.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sebastian_ml[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 1/1] mac80211: add default value for
 noscan
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

Hi all,

Would be nice if this could be fixed in 19.07 branch as well (which is
where I first saw the warning).

Kind regards,
Seb

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
