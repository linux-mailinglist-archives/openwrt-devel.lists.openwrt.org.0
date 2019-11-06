Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA74F218F
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 23:24:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6kV/bz5mwBfzF2/pvuyoQkRuR3H+T76Mm05Wdys1PGU=; b=AHS2YRufPfqQSd
	hxZ0ORf/VlYLE6uIIr9hRbgQyUju3XDRJcomN9kR8by41eV+2p6dNcM/8GtgX1lPE0qWXBowQn9DB
	kXwwa93K+qAk+o2Ns3MD13xrxYTX2prFbRUzZwfl+pv32FViVMmWwH/XYB/qTuR04AeRW/vJj8lFZ
	DknO3MMMourOWmA7yTOQb5mNIf0emX0CBaRJjTIQu8LTzryGzhApcroZcbEGIcwmRbqZG3HUFv4y5
	6koQa+yQ73HzdYF4tc1M74bFhLir1MQpb7y7tFBHX9hBjD7f1cme6ZTt/eV5w/rIO5h2EWd0KkOcE
	0I26xazPsxTtq9y6+AmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSTib-0002zO-Do; Wed, 06 Nov 2019 22:24:01 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSTiR-0002yc-32
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 22:23:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573079016;
 bh=AjitYtnWk+QvPRDX45jp8W3BzP8iim2Tvj3us4/Z0BQ=;
 h=X-UI-Sender-Class:From:To:References:In-Reply-To:Subject:Date;
 b=SToFPO1Sl/RD7LEOZhtJ4dcALBZeryfoRXihP5XCFN5efYlX/ww5O21yLdZlU9jVw
 sLxFRNe6A2k9uCQXiGJNlS3j/PR7/duBvlVgAVWPPILKFUymaEpZVo/skai6Vpighl
 SAsMmJkp6wH/fXca4TV87GkH7GiO/LeJumzNq+ZY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from Gasman2 ([95.223.73.89]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MBUqF-1idmuG3sxb-00D0yf; Wed, 06
 Nov 2019 23:23:36 +0100
From: <tmo26@gmx.de>
To: "'Stijn Tintel'" <stijn@linux-ipv6.be>, <openwrt-devel@lists.openwrt.org>
References: <e7e7d7ce-8e9c-8bd8-5491-7e2f5f4ba74d@linux-ipv6.be>
 <05b50591-6dcd-dda1-d623-e4d91a300265@linux-ipv6.be>
In-Reply-To: <05b50591-6dcd-dda1-d623-e4d91a300265@linux-ipv6.be>
Date: Wed, 6 Nov 2019 23:23:33 +0100
Message-ID: <002401d594f0$d3b7fd10$7b27f730$@gmx.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: de
Thread-Index: AQF91jWwC3TV8Q7iYj/WXBU9B/QM0wLoh4ihqBbwy+A=
X-Provags-ID: V03:K1:hZ/nAFVbuq7QnGgZhuo+M6h98WdOJikGr4v/U/zbd4+aN0AXmGh
 DJjRCjB3WhDY3V7qm4K0Hk8fMvLPDmiwf94A0TdfC8w68qD2mSlZ24JN1ELHv48DYOOEN2W
 yMqDUxfnOFVmzk16Cuji75BCAa4Amvxa8uiNhifhvw7yJvhcdUU2t2kH2SkU5xxS86lf+Rl
 Rr6/O2/pXDd1amtpW95qg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8hWTH7he1aY=:00gFL6SAy0/siWPw0P2MUt
 uvJU0ta8hpTHxoegXZo5h5Lb+hi0JEt7EKxU2tp8f13uW8pZ9P5bSdvZNCLiIQmZXeIefnK2w
 5UAxlp+A0qudSEcPr8YZSRTH49UYL6OHZO1qE66QvAEIWniMsOpgzk8U54vPySOAx+eImf/jc
 yXXmHr2jd7z0mPRy0SvPtxjxIO26AEbQrUEOM1M95t6oN+9y430M9qE61FXLj7rpQZ1VuGiaL
 p0GtjYrSc7NnJY5PmxFp0/75MQa5bljBVwoWisbbzggWxTf4nJrEF4Vx+WxrosONceGj3qzBX
 U/UpeHUIYZA3cTbb2bYODjsv5rJuPxVpoowuLaKZuqhR67MQ3QAkJG67M3LebwIxpMWt/I+UL
 3k8N9EfT28iPfCpLUdHbp8T/uMt4qLRYhRbiQOr/iIxOOslB44Ww4za2OhR3R8Ez/PUvCNdc/
 8wiwqNteSl0ibkMbRGvcMy/wM29E5MeaK9yaNDnJimsE5WU0Zuwh99TXgpYbEyxBrzf8gEXnw
 E6Gk9IE6c/ZFokwxLuAaQ+Cgg49o0RVtkL7ybk3iczQyi8BkFHAWMVZ18TXxdMjOhKAkerRz1
 UwlzsPmr1NZ9TD8JJMzJOvbovwGJ4mC8UgQLXNK+tsPHHcr9GRly5NCQb5oB1zfpk2PcYRPWf
 j5Tnyd5H3ur/hNc++yUIzo+l5XdcZksmXNRX0Ht8DDrt5UFudCTmgymzWnEfqvOSJIhtQXOxp
 C3iRASsdDPNPw/U0JSLD3OamZcf79xI510NBJxwebqpwlnoV7+ex1zj2nsMBfNUcdx+f1G7Nv
 b5bQs2PTTLaevHCyjyTUhwjZFeohJoTl4HdVHAKfDeww6THXWJ1MImLkWkCxMzUXIKE1v+ITV
 uKM07KXNzNi9mBlkFRJ83hGK1BE6Pf58M81gG33e4Jiztr1aI/ZmpO7wN8oP1dIFba1gYFi7A
 pzErHwcGKycxhjHa4rm/pPi+IknY5HoErAFE7riVLN+XIAfytvsmbGKyIpgWg78r2XCmXhVUF
 2YK9F3BUE3T+MDfPZjyGHyfkqj0TwDv+sKRI49Bkcfu6jBkLNg1JSDq/nPuNAWqtSOgxw4aJM
 tOfq35VT8ACxqIHqvO8s7AaXqWLAEm9rNA75VyxBGQV8EMxyrYcQsfByOG2d8timn2uOMkyEg
 aWfbkBcryuuhyjWkzNCw5SLJ1Svc1XdDEtBF1cQRvS30bzYNu4ksmL2kcInu2Ry9dNG70NgkD
 w2ojHLkQSr5j8R/1XvIM/WRjgi9ovgS4jpZGpRg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_142351_468152_F59DB12D 
X-CRM114-Status: UNSURE (   6.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tmo26[at]gmx.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (tmo26[at]gmx.de)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Wiki going down for maintenance
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

> On 6/11/2019 12:51, Stijn Tintel wrote:
> > Hi,
> >
> > As the server that is hosting the OpenWrt.org wiki is running out of
> > disk space, we will take it down to resize it.
> >
> And it's back.

Thanks for the upgrade!

Thomas


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
