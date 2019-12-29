Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 543FD12C25B
	for <lists+openwrt-devel@lfdr.de>; Sun, 29 Dec 2019 12:49:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:References:Date:In-Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Sn+xuJwGhshkt03kj58JyYuMdw0xZ+Xw3P0RiNQm0JA=; b=Sw0d7ewS6VZeqpvT6ZIlJlcAV
	kIPy78T+obp+MOT2bGH3Jsfq+7NjSUozHSdHq7qPiRMlkEKj4QqZHw7Dd/jlGTuxZXtHltoHuwo1s
	f7P7TEn4i4odo5Y+dgfMd8zUzKJN0zWTOYAs3Td15SVG4LLRFx6LQnYDbFBwVExF6lXgOO41TN7n0
	KTIxSqz6OsD1OpXPrVZuEgopsw2uhFstra8jTxRgvVHSELUWnrhuiG8B02VLuWXVeFPMpm/+r75rR
	HI7LzlNUwd3qXLB3O2PEAV4+eoY2otKdqoD2S7QUrir/pAAHOEZ+623VCpr7eaasX6lhfiXPpdLgg
	ihEcDDtnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilX4l-0008Cc-8t; Sun, 29 Dec 2019 11:49:39 +0000
In-Reply-To: <dca2a586-f2e7-eb4a-5b4a-2a8d33264040@welho.com>
Date: Sun, 29 Dec 2019 12:49:24 +0100
References: <5C8E2171-198A-49B9-8306-9A025BE15575@me.com>
 <dca2a586-f2e7-eb4a-5b4a-2a8d33264040@welho.com>
To: hannu.nyman@iki.fi
MIME-Version: 1.0
Message-ID: <mailman.21101.1577620171.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: =?utf-8?q?Petr_Nov=C3=A1k_via_openwrt-devel?=
 <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: =?utf-8?Q?Petr_Nov=C3=A1k?= <petrn@me.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent
 development snapshots: "message": "Firmware image couldn't be validated"
Content-Type: multipart/mixed; boundary="===============7654673753037072328=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7654673753037072328==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============7654673753037072328==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mr85p00im-ztdg06021801.me.com ([17.58.23.195])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilX4b-0008Bw-Eg
	for openwrt-devel@lists.openwrt.org; Sun, 29 Dec 2019 11:49:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1577620167; bh=57QW8L2eFYEqIrqup6jelTYUcJOGpC7dqTYkuXiVKJM=;
	h=Content-Type:Subject:From:Date:Message-Id:To;
	b=v2hHLKU2jHyXMARKu2kAvX40cKpil0ug4RQrs1z7hW6tPIBvDo+McVFe53ncs2uyj
	 yDTW4s+9i+rj/e3IlVlfBCiesejpou8zv0IqlgxBCR/okSeE7BrukhhiPSZRNHiOrV
	 lmrTyMqoCo+sjsivWWD5gs5kY6u/xg6RGYjd2WjzMvEYeLu1BDnDukUawBgxNZUd4B
	 HheIn27bWYVbZlVgIy9mKWgAT8F5HdXA8aTB57F0vwPd1a7iCRAwOsD3lEcojgRuvY
	 PYMY0lQSqAOwPpgXuWvlb8CNMNf0ZHmzV1tO4KcN0YfYjnzgG+Ezhx5kmBQ2bqg+ce
	 ke1ZG9NFTjUIQ==
Received: from [192.168.176.103] (89-24-43-124.nat.epc.tmcz.cz [89.24.43.124])
	by mr85p00im-ztdg06021801.me.com (Postfix) with ESMTPSA id BC5A7180AE4;
	Sun, 29 Dec 2019 11:49:26 +0000 (UTC)
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: Sysupgrade possibly broken in recent development snapshots:
 "message": "Firmware image couldn't be validated"
From: =?utf-8?Q?Petr_Nov=C3=A1k?= <petrn@me.com>
In-Reply-To: <dca2a586-f2e7-eb4a-5b4a-2a8d33264040@welho.com>
Date: Sun, 29 Dec 2019 12:49:24 +0100
Cc: openwrt-devel@lists.openwrt.org,
 =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Content-Transfer-Encoding: quoted-printable
Message-Id: <37443D9C-A708-463C-A906-3E6A1B5F214E@me.com>
References: <5C8E2171-198A-49B9-8306-9A025BE15575@me.com>
 <dca2a586-f2e7-eb4a-5b4a-2a8d33264040@welho.com>
To: hannu.nyman@iki.fi
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-12-29_03:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxscore=0
 mlxlogscore=748 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1912290113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_034929_505495_00E45C9B 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [17.58.23.195 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider (petrn[at]me.com)
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain

I was also suffering from this issue Hannu has reported (logread hanging =
in my case), so I have tested with the most recent fix and while the =
logread issue is fixed, the sysupgrade issue is not. I have read the =
discussion about this problem before my post, sorry, perhaps I should =
have added that as well.

I am normally building my own images, but to make sure this is easy to =
reproduce, I have recreated the problem with the most recent snapshot =
builds as well.

Regarding the suggested -F workaround, that is the first thing I have =
tried, but it actually behaves the same, so the problem seems to be =
deeper and the -F does not bypass this.





--===============7654673753037072328==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7654673753037072328==--
