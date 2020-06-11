Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C941F6565
	for <lists+openwrt-devel@lfdr.de>; Thu, 11 Jun 2020 12:09:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:References:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=THZoOn6iv0QsQHWU34MV+bJaOoKHw+TyGB2AkPY9KpM=; b=tCJyz4t481irYb
	9Dlt9ngLddsnX8PcMs0OjufFdCM2HonP3bUQqxhb+EpKIYQ47MouSdQcKhAQRm+OXqjBG5zg53T6o
	mzVqSXQsICSpN8Y7tH42R9A7Ihjz2np9Nlf0a2vu+HFQ3FA7NsVkuLABZvNtmExJjbkrYBTb1VSVE
	BPPX5LD/5DCSsMJGTExJGudkOOYP2gyEpAjaGwEubKZpFPOXzuXdc50GNTKEK+YbwTzstv+SihUam
	soC8TYqzuL2/HW3l5agyo6FRccvYq2y7/RNVGvNfPvxDKlb4+b9oQRBlpVSb85ALlZ8Q9OvVXT1xu
	3Bhvw8uzzKMg2NvPUahQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjK90-0001aB-4o; Thu, 11 Jun 2020 10:09:10 +0000
To: openwrt-devel@lists.openwrt.org
Date: Thu, 11 Jun 2020 12:08:46 +0200
References: <930b49e0-38f2-62b9-6f36-3d81ac6bd7a9.ref@yahoo.com>
MIME-Version: 1.0
Message-ID: <mailman.22325.1591870140.2542.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: "R. Diez via openwrt-devel" <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: "R. Diez" <rdiezmail-openwrt@yahoo.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] Problems with e-mail DMARC policy,
 and other usability issues
Content-Type: multipart/mixed; boundary="===============8878877045081008671=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8878877045081008671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============8878877045081008671==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from sonic313-20.consmr.mail.ir2.yahoo.com ([77.238.179.187])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjK8o-0001ZK-43
	for openwrt-devel@lists.openwrt.org; Thu, 11 Jun 2020 10:08:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1591870130; bh=zDUCPdWAmC7Rxd5WMEixBPuxOCZAHaT3ik490OCJvWE=; h=From:Subject:To:Date:References:From:Subject; b=i5ENZXeH34vpdSEGiW4NUoZGHIXFD4gvKKAjohuN8rhISQDZMSD3aYSFU6qhCvQz3IS5YqH4mO8KLNQxgVfZJmz+HmOEjzfsAiv/RbFtPnFOtj5ksEbq9w8po8FhBg5acrj7bXN6SYWE64nq5iRVuGpd91dQbaLUZtRLD0gFORgFx1HzlvR76Cf8F+OLWuRogcsJSs2+O4eYSk5DsacoVSFLmc6FF7M84IrsrmMEJMHdWl3Cq1jtk6YBdTeHKej+nIEbrDciHEYdVGImfkm/RXC3IvOnB3qwun9xDCVsU54iNiJ7L4m4X2b9jrfTCi5IxbhTGSKd8YmAizgvSfBCfA==
X-YMail-OSG: JQsZC4cVM1lOEHDPuK1RzZDbR84aiJSW9Yi9OPLH.BXK5qeOtIRhQM8p0U1ZS26
 OKweXV4XRpCxIBVOm2p4szx28f3AlzZvl2GaVLACHduHSHN78mG1FZIpNC.hwXG3qTJd_Vzw7HRP
 ik.BatDZ8jb5GNtrTDsXkBk4SIdkxTJeC4uGD8L8V1tm12f2H2Sm4VDMoYKRTsTOKcLgm8Y6b0J5
 XMRRu35uXuqYOsDbnaGHDVnGrvcow2IhLH_iIgmOyWrDx8j3.QICNpgu2u5UBbp5FT6d3JAbYoQu
 amJ7Rxc38DUMhtWXa7Qf8BfdZyf0JDpkVFsyYG2WklPW94mwn.5KxQbbDt20v7zsS..yPxAY1PQ_
 s67FE6k4HQTUeZRnpXADjKzWAM24sfDq4kSn7WepVPN2GoF8adeTWO8XL6QECD3QbHxg4vACJtOl
 znJueYvD0M9jHDRglMwpX8J.lhtYleJGKY41N6op_C.ex2jy2pnXc2nsuHfMUjXf4TIex0VP5APN
 COvY.YaTvlSOZPc1t4_9YNttFMF3L4NknP0eR2jiaIX8qT_2CmwUD6ZvpbzdT__AA2VmLaEjE97.
 9kdGqdESA5P_zEnR9TmBvfUnC0J91mRoUst5zOTqBIts_PMZv_Jb0sJCb5161lKSx1vRwMZqPeKl
 2fsuUf1ShN.kNP0clyo3Wl4kUK2Asa5AlzojsRn1dzAji9MAzZF9WLe7LvXMKXzLjYZEuxSNvpwg
 cVNDUtnkeBIz8UJPcj73zdUGII_fVS_CHmh37F4YkNEFSGKqk4DE3elROJcc.na4iaeVPQqDM5Gy
 QgyPG14nGaKGEs.XKQyLoqOHfE3f441WlOczHIc3c_T5o12QL2e_2DYgItBVLQGCjtuPYqgIm0ta
 AlsPlrPWtEndo2OehhpDezyGViJnt7ofrtnWd.oUpZBxznIqT4eY1paAMjP6uXhEmRTy4O7yyPaz
 x1ZCuhLu6njvLlBVTN37YV4mOBkogckxXXzxs3u7bpvHkwQP9mZ1aDFhbKwzXl9DEzbswWti7y8q
 X0BL.yZFZD3Rq_2UGJB.1DJ0juiOqp_KcTX9FzVPPWzsl410yu6.vPxwvCklzRWR7N8etfDMfiXh
 W8YfJ9JzycvsRKsWwWWIMYmeoi2lraZl_NvOnccrpWV5ZYoYOcKT3F9ISWscCgAAPRkhm2QayKyi
 6hbvp0C0f2vHNJHlytB2IBfjs5FI7cTxjYh1T4KkYBEmUp.g5F2XV9kMNEhBqr1flZh0cLYJwaya
 T_VM7HOKTexgMyvG6AM6l_eJNyFyTx0HopHENFN1azauirigpa8zLPZ78t1HKgm4vNRi0V9XSbna
 ADjeSs_lKUQxoyNKIz2a2W0jzZ1GqH_4_5n7WLXx1er4s.xDja1qswlwdjVZSMVbp0ymwl5unG7z
 dcKrCTlVp1883MOFKu1rq9RI1EZMQU1BOQnj6kasbqCkhLUmPlhCmHKTSY_rJpY15KUfWnOHNUpL
 gLRWE_lZoCH1R0WpwP9kKSCzEnPsChSJ_5xSB6sJDbNmjopJAXJ.ZMybrMIJLlL66lL83x0ci_40
 ucV0JhldF5R45
Received: from sonic.gate.mail.ne1.yahoo.com by sonic313.consmr.mail.ir2.yahoo.com with HTTP; Thu, 11 Jun 2020 10:08:50 +0000
Received: by smtp414.mail.ir2.yahoo.com (VZM Hermes SMTP Server) with ESMTPA ID 214e88ce4bac8b06e80f1f3cea0e7639;
          Thu, 11 Jun 2020 10:08:47 +0000 (UTC)
From: "R. Diez" <rdiezmail-openwrt@yahoo.com>
Subject: Problems with e-mail DMARC policy, and other usability issues
To: openwrt-devel@lists.openwrt.org
Message-ID: <930b49e0-38f2-62b9-6f36-3d81ac6bd7a9@yahoo.com>
Date: Thu, 11 Jun 2020 12:08:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
References: <930b49e0-38f2-62b9-6f36-3d81ac6bd7a9.ref@yahoo.com>
X-Mailer: WebService/1.1.16072 hermes_yahoo Apache-HttpAsyncClient/4.1.4 (Java/11.0.6)
Content-Length: 4846
X-Bad-Reply: References but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_030858_295183_F9B1AAA1 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [77.238.179.187 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [rdiezmail-openwrt[at]yahoo.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [77.238.179.187 listed in wl.mailspike.net]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different

Hi all:

I am trying to contribute a few trivial changes to OpenWrt. So far it has been frustrating. I recently jumped through all the hoops and managed to 
e-mail the patches correctly (or so I believe):

http://lists.infradead.org/pipermail/openwrt-devel/2020-June/023887.html
http://lists.infradead.org/pipermail/openwrt-devel/2020-June/023888.html

However, when I look at Patchwork, it has picked up the following lines as part of the commit message:

------------8<------------8<------------
The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
------------8<------------8<------------

I am sure you have seen that often in this mailing list.

The Patchwork links where you can see that effect are:

https://patchwork.ozlabs.org/project/openwrt/patch/mailman.21997.1591781638.2542.openwrt-devel@lists.openwrt.org/

https://patchwork.ozlabs.org/project/openwrt/patch/mailman.22006.1591783382.2542.openwrt-devel@lists.openwrt.org/


I am not mailing list expert, but I have seen this problem recently with Microsoft Office 365 and with many other open-source-based mailing lists. It 
has been talked about everywhere because many e-mail providers have been tightening e-mail policies in an uphill battle against spam.

I am using Yahoo, which I am not particular proud of, but this is a general issue affecting other providers. Under Patchwork, I could quickly find a 
few other people who got those lines in their commit messages too.

Microsoft had to change the way their online system handles mailing list e-mails, and many other people had to change their ways too.

 From what I gathered, I believe it is reasonable for providers to demand that you shall not forge e-mails (send e-mails pretending to be the user). 
And that is what many mailing lists actually tried to do until recently.

Could you please stop your mailing list server from adding that "The sender domain has a DMARC..." warning? The server should do whatever wrapping / 
"reply to" header / forwarding it needs to do, or it has been decided it is best to do, and stop warning about it.

Some mailing list systems, like the OpenWrt forum, have no such issues when forwarding e-mails.


I will also take this opportunity to mention again that Gerrit, while also somewhat annoying, provides a better user experience than Patchwork (in my 
opinion). You can upload your patch directly from Git without facing e-mail formatting issues, and it tells you whether your patch compiles, and even 
whether it conflicts with another patch (and which one). You can also comment directly on a patch. You can see it in action here:

http://openocd.zylin.com

I do not particularly advocate for Gerrit, as it has annoying usability issues too, but it is a reminder that patch management can be better.


Patchwork does not seem able to pick up a patch from an e-mail attachment aptly named xxx.patch, and with an e-mail title that starts with [PATCH]. Or 
maybe it is the mailing list server making it difficult. This is an example:

http://lists.infradead.org/pipermail/openwrt-devel/2020-June/023772.html

The attachment was dropped with the notice "A non-text attachment was scrubbed...", even though it is all plain text (all byte values are < 127). 
Maybe the mailing list server just needs to learn that ".patch" is a common file extension used in development mailing lists.


You may of course insist on making people jump through your hoops in order to contribute. Such hoops are for example changing e-mail provider, having 
to use "git send-email" because it is the only practical way to get it to work. Or having to write the first character in the commit line in 
lowercase, and remembering to remove the period at the end.

Those procedures probably makes the maintainer's lives easier. It is like filling long, difficult forms when dealing with government bureaucracy: it 
makes the lives of the public servants easier. But we all find that very annoying.

But my guess is that keeping such policies will damage the project in the long run. I have already noticed many small issues in the build system that 
I have not bothered to send a patch for in the last years because of the high barrier of entry.

Ease of use is extremely important for most humans, more than one would reasonably assume. I personally can understand why people buy Apple or use 
Visual Studio Code, which is a newcomer that has become very popular very fast. Such software is just easier to use than the alternatives.

I can also understand that you may not have the resources to change your ways. I just felt that these usability issues are worth stating clearly 
(maybe once more).

Regards,
   rdiez


--===============8878877045081008671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8878877045081008671==--
