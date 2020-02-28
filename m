Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04573173007
	for <lists+openwrt-devel@lfdr.de>; Fri, 28 Feb 2020 05:49:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:References:Date:In-Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HWhPUngDBOHCwmYlTMmlLJiYoLERDloh0mHnjbVpV6I=; b=lkHui4cqG8wgdHjT7J3NrvC/g
	uQOwmrWjx2btorFK/uzqfRfmw8D+hQx8LiM/uIJOsVh4MtZHGZNGjc/O69w27efX/LXR7Bm6lDjde
	fGnhI6sG44DI8m+7EXbfi0pVscHMQiiFWMRDhycAHKeHEFnaOwQWhS2jkoyTAjg5c7YSAETfC1GmX
	jfd/vDZ/Yogya6CwiU8t4+SoNlYKNzd0vpVOIFp03HYxOoc40ocLWCTV6VjyRtzfYGND5BHztKFXz
	k9MVr5ZQh0XQZ0bX9tejBIDgbkKcIGmv917qjWuDfy1jyB7r4n1RUzE7Q7qbwhkIYEaf5Nui39Xgw
	F5sXJndrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7XZv-00069B-UF; Fri, 28 Feb 2020 04:48:47 +0000
In-Reply-To: <58dc20a2-a8ba-62e5-a13e-ad2833674289@gmail.com>
Date: Thu, 27 Feb 2020 23:48:35 -0500
References: <20200224120605.152672-1-mans0n@gorani.run>
 <020001d5eb15$97c9e810$c75db830$@adrianschmutzler.de>
 <BF9B5E3E-E8A4-4798-B85A-1078A871F6A2@me.com>
 <005c01d5ebca$18761290$496237b0$@adrianschmutzler.de>
 <mailman.34108.1582780593.2486.openwrt-devel@lists.openwrt.org>
 <58dc20a2-a8ba-62e5-a13e-ad2833674289@gmail.com>
To: Alberto Bursi <bobafetthotmail@gmail.com>
MIME-Version: 1.0
Message-ID: <mailman.34418.1582865321.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Raylynn Knight via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openWrt Development List <openwrt-devel@lists.openwrt.org>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Raylynn Knight <rayknight@me.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [PATCH] kirkwood: convert DTS patches into
 plain DTS files
Content-Type: multipart/mixed; boundary="===============6280304401794088945=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6280304401794088945==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============6280304401794088945==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from st43p00im-ztfb10061701.me.com ([17.58.63.172])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7XZn-00068s-2O
	for openwrt-devel@lists.openwrt.org; Fri, 28 Feb 2020 04:48:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1582865316; bh=N+WmlzIDaXR++ruyYu9kyjNa1Hf73dwlPR/PgR9JoOg=;
	h=Content-Type:Subject:From:Date:Message-Id:To;
	b=yGKpMplFVFeIyAynDIqe8SeY5KjvhaC9ZW8HjgiKOOIklGI5LYjx6/DhhvBn6cAFb
	 98Le1ZfBh9vMktxrjbWP2mUOzx2y35nCkmkr5CjjRC0rD8K3/B+IAowA7ZPOVvQUJ9
	 CpIpJr4HLQ4W66R85aFuC+4CNYn+v6J4CbWvbRn5heFbxhDa1uXDO/u7lrq4wmQefK
	 HfaGcJuwkucxG0oB9ex3TH3mDfTmW+5WM4lQMGSuoeoDhu6oBGqxZ6lz8YZPynVyTa
	 iu0YyjvOiVgBaTYQM1/capdbMcRa47t+LZSyvOuRbQ4tAzC1w7T/sMMv+0+QunLj9y
	 JFGodxUHBu5fA==
Received: from imac-27-2017.lan (c-71-204-6-23.hsd1.ga.comcast.net [71.204.6.23])
	by st43p00im-ztfb10061701.me.com (Postfix) with ESMTPSA id 15A64AC0678;
	Fri, 28 Feb 2020 04:48:36 +0000 (UTC)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: [OpenWrt-Devel] [PATCH] kirkwood: convert DTS patches into plain
 DTS files
From: Raylynn Knight <rayknight@me.com>
In-Reply-To: <58dc20a2-a8ba-62e5-a13e-ad2833674289@gmail.com>
Date: Thu, 27 Feb 2020 23:48:35 -0500
Cc: openWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <BF472858-FB3C-4B5D-A869-847DABCE33B9@me.com>
References: <20200224120605.152672-1-mans0n@gorani.run>
 <020001d5eb15$97c9e810$c75db830$@adrianschmutzler.de>
 <BF9B5E3E-E8A4-4798-B85A-1078A871F6A2@me.com>
 <005c01d5ebca$18761290$496237b0$@adrianschmutzler.de>
 <mailman.34108.1582780593.2486.openwrt-devel@lists.openwrt.org>
 <58dc20a2-a8ba-62e5-a13e-ad2833674289@gmail.com>
To: Alberto Bursi <bobafetthotmail@gmail.com>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2020-02-27_08:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-2002280042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_204839_186047_2DAD9A1C 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [17.58.63.172 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [rayknight[at]me.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid

Don=E2=80=99t know how successful I=E2=80=99ll be at upstreaming as the =
last time I had code accepted into the kernel was back in 2002/2003 when =
I was active in the m68k Mac port.   It will probably be late March =
before I will have time I can commit to the effort, but I have a large =
collection of Kirkwood based devices that I would like to see upstreamed =
and supported by OpenWrt.  I just need to find the time to work on them!

Ray


> On Feb 27, 2020, at 3:44 AM, Alberto Bursi <bobafetthotmail@gmail.com> =
wrote:
>=20
>=20
>=20
> On 27/02/20 06:16, Raylynn Knight via openwrt-devel wrote:
>> The sender domain has a DMARC Reject/Quarantine policy which =
disallows
>> sending mailing list messages using the original "From" header.
>>=20
>> To mitigate this problem, the original message has been wrapped
>> automatically by the mailing list software.
>>=20
>>=20
>> Sorry, I did intend the email for the list.
>>=20
>> I actually have an example of all of the devices affected by this =
patch except the nsa310b.  Would there be any issue with me trying to =
get the OpenWrt patches upstreamed?
>>=20
>> Ray
>> =20
>>=20
>>=20
>>=20
>> _______________________________________________
>> openwrt-devel mailing list
>>=20
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>=20
>=20
> I have a nsa310b and I can test things on it, if you want to upstream =
its patches.
>=20
> If you are good at upstreaming, could you also consider upstreaming =
the ledtrig-libata patch?
>=20
> =
https://github.com/openwrt/openwrt/blob/master/target/linux/generic/pendin=
g-4.19/834-ledtrig-libata.patch
>=20
> It's about creating a led trigger for each SATA port and it would be =
nice to have upstream too.
>=20
> -Alberto
>=20



--===============6280304401794088945==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6280304401794088945==--
